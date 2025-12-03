@interface _CPResultSectionForFeedback
- (BOOL)isEqual:(id)equal;
- (NSString)bundleIdentifier;
- (_CPResultSectionForFeedback)initWithFacade:(id)facade;
- (int)knownBundleIdentifier;
- (unint64_t)hash;
- (void)addResults:(id)results;
- (void)clearBundleid;
- (void)setBundleIdentifier:(id)identifier;
- (void)setKnownBundleIdentifier:(int)identifier;
- (void)setResults:(id)results;
- (void)writeTo:(id)to;
@end

@implementation _CPResultSectionForFeedback

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_results hash];
  v4 = [(NSString *)self->_identifier hash];
  rankingScore = self->_rankingScore;
  if (rankingScore < 0.0)
  {
    rankingScore = -rankingScore;
  }

  *v5.i64 = round(rankingScore);
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v9 = v4 ^ v3;
  v10 = (*vbslq_s8(vnegq_f64(v8), v6, v5).i64 * 2654435760.0) + vcvtd_n_u64_f64(rankingScore - *v5.i64, 0x40uLL);
  v11 = [(NSData *)self->_fallbackResultSection hash];
  v12 = [(NSString *)self->_bundleIdentifier hash];
  v13 = 2654435761 * self->_knownBundleIdentifier;
  v14 = 2654435761 * self->_isInitiallyHidden;
  v15 = 2654435761 * self->_totalAvailableResults;
  return v9 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ [(_CPButtonForFeedback *)self->_titleButtonItem hash]^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  results = [(_CPResultSectionForFeedback *)self results];
  results2 = [equalCopy results];
  if ((results != 0) == (results2 == 0))
  {
    goto LABEL_30;
  }

  results3 = [(_CPResultSectionForFeedback *)self results];
  if (results3)
  {
    v8 = results3;
    results4 = [(_CPResultSectionForFeedback *)self results];
    results5 = [equalCopy results];
    v11 = [results4 isEqual:results5];

    if (!v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  results = [(_CPResultSectionForFeedback *)self identifier];
  results2 = [equalCopy identifier];
  if ((results != 0) == (results2 == 0))
  {
    goto LABEL_30;
  }

  identifier = [(_CPResultSectionForFeedback *)self identifier];
  if (identifier)
  {
    v13 = identifier;
    identifier2 = [(_CPResultSectionForFeedback *)self identifier];
    identifier3 = [equalCopy identifier];
    v16 = [identifier2 isEqual:identifier3];

    if (!v16)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  rankingScore = self->_rankingScore;
  [equalCopy rankingScore];
  if (rankingScore != v18)
  {
    goto LABEL_31;
  }

  results = [(_CPResultSectionForFeedback *)self fallbackResultSection];
  results2 = [equalCopy fallbackResultSection];
  if ((results != 0) == (results2 == 0))
  {
    goto LABEL_30;
  }

  fallbackResultSection = [(_CPResultSectionForFeedback *)self fallbackResultSection];
  if (fallbackResultSection)
  {
    v20 = fallbackResultSection;
    fallbackResultSection2 = [(_CPResultSectionForFeedback *)self fallbackResultSection];
    fallbackResultSection3 = [equalCopy fallbackResultSection];
    v23 = [fallbackResultSection2 isEqual:fallbackResultSection3];

    if (!v23)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  results = [(_CPResultSectionForFeedback *)self bundleIdentifier];
  results2 = [equalCopy bundleIdentifier];
  if ((results != 0) == (results2 == 0))
  {
    goto LABEL_30;
  }

  bundleIdentifier = [(_CPResultSectionForFeedback *)self bundleIdentifier];
  if (bundleIdentifier)
  {
    v25 = bundleIdentifier;
    bundleIdentifier2 = [(_CPResultSectionForFeedback *)self bundleIdentifier];
    bundleIdentifier3 = [equalCopy bundleIdentifier];
    v28 = [bundleIdentifier2 isEqual:bundleIdentifier3];

    if (!v28)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  knownBundleIdentifier = self->_knownBundleIdentifier;
  if (knownBundleIdentifier != [equalCopy knownBundleIdentifier])
  {
    goto LABEL_31;
  }

  isInitiallyHidden = self->_isInitiallyHidden;
  if (isInitiallyHidden != [equalCopy isInitiallyHidden])
  {
    goto LABEL_31;
  }

  totalAvailableResults = self->_totalAvailableResults;
  if (totalAvailableResults != [equalCopy totalAvailableResults])
  {
    goto LABEL_31;
  }

  results = [(_CPResultSectionForFeedback *)self titleButtonItem];
  results2 = [equalCopy titleButtonItem];
  if ((results != 0) == (results2 == 0))
  {
LABEL_30:

    goto LABEL_31;
  }

  titleButtonItem = [(_CPResultSectionForFeedback *)self titleButtonItem];
  if (!titleButtonItem)
  {

LABEL_34:
    v37 = 1;
    goto LABEL_32;
  }

  v33 = titleButtonItem;
  titleButtonItem2 = [(_CPResultSectionForFeedback *)self titleButtonItem];
  titleButtonItem3 = [equalCopy titleButtonItem];
  v36 = [titleButtonItem2 isEqual:titleButtonItem3];

  if (v36)
  {
    goto LABEL_34;
  }

LABEL_31:
  v37 = 0;
LABEL_32:

  return v37;
}

- (void)writeTo:(id)to
{
  v30 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = self->_results;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  identifier = [(_CPResultSectionForFeedback *)self identifier];

  if (identifier)
  {
    identifier = self->_identifier;
    PBDataWriterWriteStringField();
  }

  [(_CPResultSectionForFeedback *)self rankingScore];
  if (v13 != 0.0)
  {
    rankingScore = self->_rankingScore;
    PBDataWriterWriteDoubleField();
  }

  fallbackResultSection = [(_CPResultSectionForFeedback *)self fallbackResultSection];

  if (fallbackResultSection)
  {
    fallbackResultSection = self->_fallbackResultSection;
    PBDataWriterWriteDataField();
  }

  bundleIdentifier = [(_CPResultSectionForFeedback *)self bundleIdentifier];

  if (bundleIdentifier)
  {
    bundleIdentifier = self->_bundleIdentifier;
    PBDataWriterWriteStringField();
  }

  if ([(_CPResultSectionForFeedback *)self knownBundleIdentifier])
  {
    knownBundleIdentifier = self->_knownBundleIdentifier;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPResultSectionForFeedback *)self isInitiallyHidden])
  {
    isInitiallyHidden = self->_isInitiallyHidden;
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPResultSectionForFeedback *)self totalAvailableResults])
  {
    totalAvailableResults = self->_totalAvailableResults;
    PBDataWriterWriteUint32Field();
  }

  titleButtonItem = [(_CPResultSectionForFeedback *)self titleButtonItem];

  if (titleButtonItem)
  {
    titleButtonItem2 = [(_CPResultSectionForFeedback *)self titleButtonItem];
    PBDataWriterWriteSubmessage();
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (int)knownBundleIdentifier
{
  if (self->_whichBundleid == 2)
  {
    return self->_knownBundleIdentifier;
  }

  else
  {
    return 0;
  }
}

- (void)setKnownBundleIdentifier:(int)identifier
{
  [(_CPResultSectionForFeedback *)self clearBundleid];
  self->_whichBundleid = 2;
  self->_knownBundleIdentifier = identifier;
}

- (NSString)bundleIdentifier
{
  if (self->_whichBundleid == 1)
  {
    v3 = self->_bundleIdentifier;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(_CPResultSectionForFeedback *)self clearBundleid];
  self->_whichBundleid = identifierCopy != 0;
  v4 = [identifierCopy copy];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v4;
}

- (void)addResults:(id)results
{
  resultsCopy = results;
  results = self->_results;
  v8 = resultsCopy;
  if (!results)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_results;
    self->_results = array;

    resultsCopy = v8;
    results = self->_results;
  }

  [(NSArray *)results addObject:resultsCopy];
}

- (void)setResults:(id)results
{
  v4 = [results mutableCopy];
  results = self->_results;
  self->_results = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)clearBundleid
{
  self->_whichBundleid = 0;
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = 0;

  self->_knownBundleIdentifier = 0;
}

- (_CPResultSectionForFeedback)initWithFacade:(id)facade
{
  v34 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v32.receiver = self;
  v32.super_class = _CPResultSectionForFeedback;
  v5 = [(_CPResultSectionForFeedback *)&v32 init];
  if (!v5)
  {
    goto LABEL_378;
  }

  results = [facadeCopy results];
  if (results)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  else
  {
    v7 = 0;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  results2 = [facadeCopy results];
  v9 = [results2 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(results2);
        }

        v13 = [[_CPSearchResultForFeedback alloc] initWithFacade:*(*(&v28 + 1) + 8 * i)];
        [v7 addObject:v13];
      }

      v10 = [results2 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v10);
  }

  [(_CPResultSectionForFeedback *)v5 setResults:v7];
  identifier = [facadeCopy identifier];

  if (identifier)
  {
    identifier2 = [facadeCopy identifier];
    [(_CPResultSectionForFeedback *)v5 setIdentifier:identifier2];
  }

  [facadeCopy rankingScore];
  [(_CPResultSectionForFeedback *)v5 setRankingScore:?];
  bundleIdentifier = [facadeCopy bundleIdentifier];

  if (bundleIdentifier)
  {
    bundleIdentifier2 = [facadeCopy bundleIdentifier];
    if ([bundleIdentifier2 compare:@"unknown" options:3])
    {
      if ([bundleIdentifier2 compare:@"com.apple.parsec.web_index" options:3])
      {
        if ([bundleIdentifier2 compare:@"com.apple.application" options:3])
        {
          v18 = 3;
          if ([bundleIdentifier2 compare:@"com.apple.preferences" options:3])
          {
            if ([bundleIdentifier2 compare:@"com.apple.mobilemail" options:3])
            {
              if ([bundleIdentifier2 compare:@"com.apple.mobilesafari" options:3])
              {
                if ([bundleIdentifier2 compare:@"com.apple.mobilesms" options:3])
                {
                  if ([bundleIdentifier2 compare:@"com.apple.stocks" options:3])
                  {
                    if ([bundleIdentifier2 compare:@"com.apple.parsec.stocks" options:3])
                    {
                      if ([bundleIdentifier2 compare:@"com.apple.taptoradar" options:3])
                      {
                        if ([bundleIdentifier2 compare:@"com.apple.searchd.zkw.apps" options:3])
                        {
                          if ([bundleIdentifier2 compare:@"com.apple.searchd.suggestions" options:3])
                          {
                            if ([bundleIdentifier2 compare:@"com.apple.podcasts" options:3])
                            {
                              if ([bundleIdentifier2 compare:@"com.apple.mobileaddressbook" options:3])
                              {
                                if ([bundleIdentifier2 compare:@"com.apple.documentsapp" options:3])
                                {
                                  if ([bundleIdentifier2 compare:@"com.apple.coresuggestions" options:3])
                                  {
                                    if ([bundleIdentifier2 compare:@"com.apple.clouddocs.mobiledocumentsfileprovider" options:3])
                                    {
                                      if ([bundleIdentifier2 compare:@"com.apple.music" options:3])
                                      {
                                        if ([bundleIdentifier2 compare:@"com.apple.mobilecal" options:3])
                                        {
                                          if ([bundleIdentifier2 compare:@"com.apple.other:search_web" options:3])
                                          {
                                            if ([bundleIdentifier2 compare:@"com.apple.other:search_app_store" options:3])
                                            {
                                              if ([bundleIdentifier2 compare:@"com.apple.other:search_maps" options:3])
                                              {
                                                if ([bundleIdentifier2 compare:@"com.apple.spotlight.suggestionlist.usertypedstring" options:3])
                                                {
                                                  if ([bundleIdentifier2 compare:@"com.apple.spotlight.suggestionlist.parsec" options:3])
                                                  {
                                                    if ([bundleIdentifier2 compare:@"com.apple.other:taptoradar" options:3])
                                                    {
                                                      if ([bundleIdentifier2 compare:@"com.apple.spotlightui.search-through" options:3])
                                                      {
                                                        if ([bundleIdentifier2 compare:@"com.apple.weather" options:3])
                                                        {
                                                          if ([bundleIdentifier2 compare:@"com.apple.maps" options:3])
                                                          {
                                                            if ([bundleIdentifier2 compare:@"google_comp" options:3])
                                                            {
                                                              if ([bundleIdentifier2 compare:@"history" options:3])
                                                              {
                                                                if ([bundleIdentifier2 compare:@"com.apple.safari.completionlist.searchenginesuggestion" options:3])
                                                                {
                                                                  if ([bundleIdentifier2 compare:@"google_search" options:3])
                                                                  {
                                                                    if ([bundleIdentifier2 compare:@"com.apple.safari.completionlist.usertypedstring" options:3])
                                                                    {
                                                                      if ([bundleIdentifier2 compare:@"com.apple.history" options:3])
                                                                      {
                                                                        if ([bundleIdentifier2 compare:@"com.apple.safari.completionlist.findonpage" options:3])
                                                                        {
                                                                          if ([bundleIdentifier2 compare:@"tophit" options:3])
                                                                          {
                                                                            if ([bundleIdentifier2 compare:@"com.apple.tophit" options:3])
                                                                            {
                                                                              if ([bundleIdentifier2 compare:@"icloud_tab" options:3])
                                                                              {
                                                                                if ([bundleIdentifier2 compare:@"com.apple.safari.completionlist.recentsearch" options:3])
                                                                                {
                                                                                  if ([bundleIdentifier2 compare:@"bookmark" options:3])
                                                                                  {
                                                                                    if ([bundleIdentifier2 compare:@"yahoo_comp" options:3])
                                                                                    {
                                                                                      if ([bundleIdentifier2 compare:@"com.apple.bookmarks" options:3])
                                                                                      {
                                                                                        if ([bundleIdentifier2 compare:@"com.apple.other" options:3])
                                                                                        {
                                                                                          if ([bundleIdentifier2 compare:@"bing_comp" options:3])
                                                                                          {
                                                                                            if ([bundleIdentifier2 compare:@"com.apple.hashtagimages.querysuggestions.suggestion" options:3])
                                                                                            {
                                                                                              if ([bundleIdentifier2 compare:@"com.apple.safari.completionlist.restoredsearchcompletion" options:3])
                                                                                              {
                                                                                                if ([bundleIdentifier2 compare:@"ddg_comp" options:3])
                                                                                                {
                                                                                                  if ([bundleIdentifier2 compare:@"yahoo_search" options:3])
                                                                                                  {
                                                                                                    if ([bundleIdentifier2 compare:@"com.atebits.tweetie2" options:3])
                                                                                                    {
                                                                                                      if ([bundleIdentifier2 compare:@"address_box" options:3])
                                                                                                      {
                                                                                                        if ([bundleIdentifier2 compare:@"com.apple.spotlight.suggestionlist.local" options:3])
                                                                                                        {
                                                                                                          if ([bundleIdentifier2 compare:@"ddg_search" options:3])
                                                                                                          {
                                                                                                            if ([bundleIdentifier2 compare:@"bing_search" options:3])
                                                                                                            {
                                                                                                              if ([bundleIdentifier2 compare:@"com.apple.news" options:3])
                                                                                                              {
                                                                                                                if ([bundleIdentifier2 compare:@"com.apple.coresuggestions" options:3])
                                                                                                                {
                                                                                                                  if ([bundleIdentifier2 compare:@"com.giphy.giphyformessenger" options:3])
                                                                                                                  {
                                                                                                                    if ([bundleIdentifier2 compare:@"com.apple.settings" options:3])
                                                                                                                    {
                                                                                                                      if ([bundleIdentifier2 compare:@"com.google.ios.youtube" options:3])
                                                                                                                      {
                                                                                                                        if ([bundleIdentifier2 compare:@"net.whatsapp.whatsapp" options:3])
                                                                                                                        {
                                                                                                                          if ([bundleIdentifier2 compare:@"com.apple.applications" options:3])
                                                                                                                          {
                                                                                                                            if ([bundleIdentifier2 compare:@"com.riffsy.riffsykeyboard" options:3])
                                                                                                                            {
                                                                                                                              if ([bundleIdentifier2 compare:@"com.apple.spotlight.suggestionlist.contact" options:3])
                                                                                                                              {
                                                                                                                                if ([bundleIdentifier2 compare:@"com.yelp.yelpiphone" options:3])
                                                                                                                                {
                                                                                                                                  if ([bundleIdentifier2 compare:@"com.microsoft.office.outlook" options:3])
                                                                                                                                  {
                                                                                                                                    if ([bundleIdentifier2 compare:@"pinterest" options:3])
                                                                                                                                    {
                                                                                                                                      if ([bundleIdentifier2 compare:@"com.apple.mail" options:3])
                                                                                                                                      {
                                                                                                                                        if ([bundleIdentifier2 compare:@"com.apple.hashtagimages.categorylist.categories.category" options:3])
                                                                                                                                        {
                                                                                                                                          if ([bundleIdentifier2 compare:@"com.apple.mobilenotes" options:3])
                                                                                                                                          {
                                                                                                                                            if ([bundleIdentifier2 compare:@"com.apple.pdfs" options:3])
                                                                                                                                            {
                                                                                                                                              if ([bundleIdentifier2 compare:@"com.apple.documents" options:3])
                                                                                                                                              {
                                                                                                                                                if ([bundleIdentifier2 compare:@"com.google.chrome.ios" options:3])
                                                                                                                                                {
                                                                                                                                                  if ([bundleIdentifier2 compare:@"com.apple.developer" options:3])
                                                                                                                                                  {
                                                                                                                                                    if ([bundleIdentifier2 compare:@"com.google.maps" options:3])
                                                                                                                                                    {
                                                                                                                                                      if ([bundleIdentifier2 compare:@"com.apple.directories" options:3])
                                                                                                                                                      {
                                                                                                                                                        if ([bundleIdentifier2 compare:@"baidu_comp" options:3])
                                                                                                                                                        {
                                                                                                                                                          if ([bundleIdentifier2 compare:@"baidu_search" options:3])
                                                                                                                                                          {
                                                                                                                                                            if ([bundleIdentifier2 compare:@"com.apple.reminders" options:3])
                                                                                                                                                            {
                                                                                                                                                              if ([bundleIdentifier2 compare:@"com.apple.photos" options:3])
                                                                                                                                                              {
                                                                                                                                                                if ([bundleIdentifier2 compare:@"com.apple.dictionary" options:3])
                                                                                                                                                                {
                                                                                                                                                                  if ([bundleIdentifier2 compare:@"siri_comp" options:3])
                                                                                                                                                                  {
                                                                                                                                                                    if ([bundleIdentifier2 compare:@"com.google.photos" options:3])
                                                                                                                                                                    {
                                                                                                                                                                      if ([bundleIdentifier2 compare:@"com.apple.ibooks" options:3])
                                                                                                                                                                      {
                                                                                                                                                                        if ([bundleIdentifier2 compare:@"com.linkedin.linkedin" options:3])
                                                                                                                                                                        {
                                                                                                                                                                          if ([bundleIdentifier2 compare:@"com.apple.numbers" options:3])
                                                                                                                                                                          {
                                                                                                                                                                            if ([bundleIdentifier2 compare:@"com.apple.mobiletimer" options:3])
                                                                                                                                                                            {
                                                                                                                                                                              if ([bundleIdentifier2 compare:@"com.pandora" options:3])
                                                                                                                                                                              {
                                                                                                                                                                                if ([bundleIdentifier2 compare:@"com.apple.hashtagimages.categorylist.recents.recent" options:3])
                                                                                                                                                                                {
                                                                                                                                                                                  if ([bundleIdentifier2 compare:@"com.mlb.atbatuniversal" options:3])
                                                                                                                                                                                  {
                                                                                                                                                                                    if ([bundleIdentifier2 compare:@"com.yahoo.aerogram" options:3])
                                                                                                                                                                                    {
                                                                                                                                                                                      if ([bundleIdentifier2 compare:@"com.getdropbox.dropbox" options:3])
                                                                                                                                                                                      {
                                                                                                                                                                                        if ([bundleIdentifier2 compare:@"com.apple.lookup.search-through" options:3])
                                                                                                                                                                                        {
                                                                                                                                                                                          if ([bundleIdentifier2 compare:@"com.apple.calendar" options:3])
                                                                                                                                                                                          {
                                                                                                                                                                                            if ([bundleIdentifier2 compare:@"com.airbnb.app" options:3])
                                                                                                                                                                                            {
                                                                                                                                                                                              if ([bundleIdentifier2 compare:@"com.stubhub.stubhub" options:3])
                                                                                                                                                                                              {
                                                                                                                                                                                                if ([bundleIdentifier2 compare:@"com.groupon.grouponapp" options:3])
                                                                                                                                                                                                {
                                                                                                                                                                                                  if ([bundleIdentifier2 compare:@"com.apple.calculator" options:3])
                                                                                                                                                                                                  {
                                                                                                                                                                                                    if ([bundleIdentifier2 compare:@"tv.twitch" options:3])
                                                                                                                                                                                                    {
                                                                                                                                                                                                      if ([bundleIdentifier2 compare:@"com.apple.keynote" options:3])
                                                                                                                                                                                                      {
                                                                                                                                                                                                        if ([bundleIdentifier2 compare:@"com.zillow.zillowmap" options:3])
                                                                                                                                                                                                        {
                                                                                                                                                                                                          if ([bundleIdentifier2 compare:@"com.apple.voicememos" options:3])
                                                                                                                                                                                                          {
                                                                                                                                                                                                            if ([bundleIdentifier2 compare:@"com.apple.safari.completionlist.quickwebsitesearch" options:3])
                                                                                                                                                                                                            {
                                                                                                                                                                                                              if ([bundleIdentifier2 compare:@"com.apple.parsec.image_search.msgs-zkw" options:3])
                                                                                                                                                                                                              {
                                                                                                                                                                                                                if ([bundleIdentifier2 compare:@"com.apple.safari.completionlist.searchsuggestionprovider" options:3])
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  if ([bundleIdentifier2 compare:@"com.apple.searchd.zkw.suggestion" options:3])
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    if ([bundleIdentifier2 compare:@"com.apple.other:search_siri" options:3])
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                      if ([bundleIdentifier2 compare:@"switch_to_tab" options:3])
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        if ([bundleIdentifier2 compare:@"com.apple.Safari.CompletionList.WebsiteSpecificSearch" options:3])
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          if ([bundleIdentifier2 compare:@"com.apple.spotlight.suggestionlist.siri" options:3])
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            if ([bundleIdentifier2 compare:@"com.apple.contacts" options:3])
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              if ([bundleIdentifier2 compare:@"com.apple.parsec.itunes.iossoftware" options:3])
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                if ([bundleIdentifier2 compare:@"com.apple.parsec.maps" options:3])
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  if ([bundleIdentifier2 compare:@"com.apple.parsec.wiki" options:3])
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    if ([bundleIdentifier2 compare:@"com.apple.parsec.kg" options:3])
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                      if ([bundleIdentifier2 compare:@"com.apple.parsec.news" options:3])
                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                        if ([bundleIdentifier2 compare:@"com.apple.parsec.weather" options:3])
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                          if ([bundleIdentifier2 compare:@"com.apple.searchd.searchthroughsuggestions" options:3])
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                            if ([bundleIdentifier2 compare:@"com.apple.spotlight.websuggestionlist.usertypedstring" options:3])
                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                              if ([bundleIdentifier2 compare:@"com.apple.spotlight.websuggestionlist.parsec" options:3])
                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                if ([bundleIdentifier2 compare:@"com.apple.spotlight.related_search_as_typed.web" options:3])
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                  if ([bundleIdentifier2 compare:@"com.apple.spotlight.tophits" options:3])
                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                    if ([bundleIdentifier2 compare:@"com.apple.spotlight.related_search" options:3])
                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                      if ([bundleIdentifier2 compare:@"com.apple.mail.search.tophit" options:3])
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                        if ([bundleIdentifier2 compare:@"com.apple.mail.search.suggestion" options:3])
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                          if ([bundleIdentifier2 compare:@"com.apple.mail.search.suggestion.vip" options:3])
                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                            if ([bundleIdentifier2 compare:@"com.apple.mail.search.suggestion.usertyped" options:3])
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                              if ([bundleIdentifier2 compare:@"com.apple.mail.search.messageresult" options:3])
                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                if ([bundleIdentifier2 compare:@"com.apple.mail.search.messagelist" options:3])
                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                  if ([bundleIdentifier2 compare:@"com.apple.parsec.entity" options:3])
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                    if ([bundleIdentifier2 compare:@"com.apple.mail.search.suggestion.date" options:3])
                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                      if ([bundleIdentifier2 compare:@"com.apple.mail.search.suggestion.free_text" options:3])
                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                        if ([bundleIdentifier2 compare:@"com.apple.mail.search.suggestion.attachment" options:3])
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                          if ([bundleIdentifier2 compare:@"com.apple.mail.search.suggestion.people" options:3])
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            if ([bundleIdentifier2 compare:@"com.apple.mail.search.suggestion.contact" options:3])
                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                              if ([bundleIdentifier2 compare:@"com.apple.mail.search.suggestion.mailbox" options:3])
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                if ([bundleIdentifier2 compare:@"com.apple.mail.search.suggestion.flag" options:3])
                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                  if ([bundleIdentifier2 compare:@"com.apple.mail.search.suggestion.subject" options:3])
                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                    if ([bundleIdentifier2 compare:@"com.apple.mail.search.location" options:3])
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                      if ([bundleIdentifier2 compare:@"com.apple.mail.search.document" options:3])
                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                        if ([bundleIdentifier2 compare:@"com.apple.mail.search.link" options:3])
                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                          if ([bundleIdentifier2 compare:@"com.apple.1papplication" options:3])
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                            if ([bundleIdentifier2 compare:@"com.apple.3papplication" options:3])
                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                              if ([bundleIdentifier2 compare:@"com.apple.mail.search.suggestion.sendercontains" options:3])
                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                if ([bundleIdentifier2 compare:@"com.apple.mail.search.suggestion.topiccontains" options:3])
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                  if ([bundleIdentifier2 compare:@"com.apple.mail.search.suggestion.instantanswer" options:3])
                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                    if ([bundleIdentifier2 compare:@"com.apple.photos.Albums" options:3])
                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                      if ([bundleIdentifier2 compare:@"com.apple.photos.Caption" options:3])
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                        if ([bundleIdentifier2 compare:@"com.apple.photos.Categories" options:3])
                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                          if ([bundleIdentifier2 compare:@"com.apple.photos.Dates" options:3])
                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                            if ([bundleIdentifier2 compare:@"com.apple.photos.ImportedByApp" options:3])
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                              if ([bundleIdentifier2 compare:@"com.apple.photos.Keywords" options:3])
                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                if ([bundleIdentifier2 compare:@"com.apple.photos.MediaType" options:3])
                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                  if ([bundleIdentifier2 compare:@"com.apple.photos.Memories" options:3])
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                    if ([bundleIdentifier2 compare:@"com.apple.photos.Moments" options:3])
                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                      if ([bundleIdentifier2 compare:@"com.apple.photos.Ocr" options:3])
                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                        if ([bundleIdentifier2 compare:@"com.apple.photos.People" options:3])
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                          if ([bundleIdentifier2 compare:@"com.apple.photos.Places" options:3])
                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                            if ([bundleIdentifier2 compare:@"com.apple.photos.Title" options:3])
                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                              if ([bundleIdentifier2 compare:@"com.apple.photos.TopResults" options:3])
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                if ([bundleIdentifier2 compare:@"com.apple.photos.suggestions.Generic" options:3])
                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                  if ([bundleIdentifier2 compare:@"com.apple.photos.suggestions.Place" options:3])
                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                    if ([bundleIdentifier2 compare:@"com.apple.photos.zkw.Date" options:3])
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                      if ([bundleIdentifier2 compare:@"com.apple.photos.zkw.Meaning" options:3])
                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                        if ([bundleIdentifier2 compare:@"com.apple.photos.zkw.Person" options:3])
                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                          if ([bundleIdentifier2 compare:@"com.apple.photos.zkw.Place" options:3])
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                            if ([bundleIdentifier2 compare:@"com.apple.photos.zkw.Scene" options:3])
                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                              if ([bundleIdentifier2 compare:@"com.apple.photos.zkw.Season" options:3])
                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                if ([bundleIdentifier2 compare:@"com.apple.photos.zkw.SocialGroup" options:3])
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                  if ([bundleIdentifier2 compare:@"com.apple.photos.zkw.UnnamedPerson" options:3])
                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                    if ([bundleIdentifier2 compare:@"com.apple.mail.search.instantanswer.flight" options:3])
                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                      if ([bundleIdentifier2 compare:@"com.apple.mail.search.instantanswer.lodging" options:3])
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                        if ([bundleIdentifier2 compare:@"com.apple.photos.Trip" options:3])
                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                          if ([bundleIdentifier2 compare:@"com.apple.photos.AllResults" options:3])
                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                            if ([bundleIdentifier2 compare:@"com.apple.photos.suggestions.UserGeneratedText" options:3])
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                              if ([bundleIdentifier2 compare:@"com.apple.photos.suggestions.Scene" options:3])
                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                if ([bundleIdentifier2 compare:@"com.apple.photos.suggestions.PublicEvent" options:3])
                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                  if ([bundleIdentifier2 compare:@"com.apple.photos.suggestions.ActionCam" options:3])
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                    if ([bundleIdentifier2 compare:@"com.apple.photos.suggestions.Spatial" options:3])
                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                      if ([bundleIdentifier2 compare:@"com.apple.photos.suggestions.Filename" options:3])
                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                        if ([bundleIdentifier2 compare:@"com.apple.photos.zkw.prompt" options:3])
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                          if ([bundleIdentifier2 compare:@"com.apple.photos.suggestions" options:3])
                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                            goto LABEL_195;
                                                                                                                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                                                                                                                          v18 = 179;
                                                                                                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                          v18 = 178;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                        v18 = 177;
                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                      v18 = 176;
                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                    v18 = 175;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                  v18 = 174;
                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                v18 = 173;
                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                              v18 = 172;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                            v18 = 171;
                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                          v18 = 170;
                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                        v18 = 169;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                      v18 = 168;
                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                    v18 = 167;
                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                  v18 = 166;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                v18 = 165;
                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                              v18 = 164;
                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                            v18 = 163;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                          v18 = 162;
                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                        v18 = 161;
                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                      v18 = 160;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                    v18 = 159;
                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                  v18 = 158;
                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                v18 = 157;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                              v18 = 156;
                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                            v18 = 155;
                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                          v18 = 154;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                        v18 = 153;
                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                      v18 = 152;
                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                    v18 = 151;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                  v18 = 150;
                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                v18 = 149;
                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                              v18 = 148;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                            v18 = 147;
                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                          v18 = 146;
                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                        v18 = 145;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                      v18 = 144;
                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                    v18 = 143;
                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                  v18 = 142;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                v18 = 141;
                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                              v18 = 140;
                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                            v18 = 139;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                          v18 = 138;
                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                        v18 = 137;
                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                      v18 = 136;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                    v18 = 135;
                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                  v18 = 134;
                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                v18 = 133;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                              v18 = 132;
                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            v18 = 131;
                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                          v18 = 130;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                        v18 = 129;
                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                      v18 = 128;
                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                    v18 = 127;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                  v18 = 126;
                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                v18 = 125;
                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                              v18 = 124;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                            v18 = 123;
                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                          v18 = 122;
                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                        v18 = 121;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                      v18 = 120;
                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                    v18 = 119;
                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                  v18 = 118;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                              }

                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                v18 = 117;
                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                            }

                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                              v18 = 116;
                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                          }

                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                            v18 = 115;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                        }

                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                          v18 = 114;
                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                      }

                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                        v18 = 113;
                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                      v18 = 112;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                  }

                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    v18 = 111;
                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  v18 = 110;
                                                                                                                                                                                                                                }
                                                                                                                                                                                                                              }

                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                v18 = 109;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            else
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              v18 = 108;
                                                                                                                                                                                                                            }
                                                                                                                                                                                                                          }

                                                                                                                                                                                                                          else
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            v18 = 107;
                                                                                                                                                                                                                          }
                                                                                                                                                                                                                        }

                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          v18 = 106;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                      }

                                                                                                                                                                                                                      else
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        v18 = 105;
                                                                                                                                                                                                                      }
                                                                                                                                                                                                                    }

                                                                                                                                                                                                                    else
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                      v18 = 104;
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                  }

                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    v18 = 103;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                }

                                                                                                                                                                                                                else
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  v18 = 102;
                                                                                                                                                                                                                }
                                                                                                                                                                                                              }

                                                                                                                                                                                                              else
                                                                                                                                                                                                              {
                                                                                                                                                                                                                v18 = 101;
                                                                                                                                                                                                              }
                                                                                                                                                                                                            }

                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                              v18 = 100;
                                                                                                                                                                                                            }
                                                                                                                                                                                                          }

                                                                                                                                                                                                          else
                                                                                                                                                                                                          {
                                                                                                                                                                                                            v18 = 99;
                                                                                                                                                                                                          }
                                                                                                                                                                                                        }

                                                                                                                                                                                                        else
                                                                                                                                                                                                        {
                                                                                                                                                                                                          v18 = 98;
                                                                                                                                                                                                        }
                                                                                                                                                                                                      }

                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                        v18 = 97;
                                                                                                                                                                                                      }
                                                                                                                                                                                                    }

                                                                                                                                                                                                    else
                                                                                                                                                                                                    {
                                                                                                                                                                                                      v18 = 96;
                                                                                                                                                                                                    }
                                                                                                                                                                                                  }

                                                                                                                                                                                                  else
                                                                                                                                                                                                  {
                                                                                                                                                                                                    v18 = 95;
                                                                                                                                                                                                  }
                                                                                                                                                                                                }

                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                  v18 = 94;
                                                                                                                                                                                                }
                                                                                                                                                                                              }

                                                                                                                                                                                              else
                                                                                                                                                                                              {
                                                                                                                                                                                                v18 = 93;
                                                                                                                                                                                              }
                                                                                                                                                                                            }

                                                                                                                                                                                            else
                                                                                                                                                                                            {
                                                                                                                                                                                              v18 = 92;
                                                                                                                                                                                            }
                                                                                                                                                                                          }

                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                            v18 = 91;
                                                                                                                                                                                          }
                                                                                                                                                                                        }

                                                                                                                                                                                        else
                                                                                                                                                                                        {
                                                                                                                                                                                          v18 = 90;
                                                                                                                                                                                        }
                                                                                                                                                                                      }

                                                                                                                                                                                      else
                                                                                                                                                                                      {
                                                                                                                                                                                        v18 = 89;
                                                                                                                                                                                      }
                                                                                                                                                                                    }

                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                      v18 = 88;
                                                                                                                                                                                    }
                                                                                                                                                                                  }

                                                                                                                                                                                  else
                                                                                                                                                                                  {
                                                                                                                                                                                    v18 = 87;
                                                                                                                                                                                  }
                                                                                                                                                                                }

                                                                                                                                                                                else
                                                                                                                                                                                {
                                                                                                                                                                                  v18 = 86;
                                                                                                                                                                                }
                                                                                                                                                                              }

                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                v18 = 85;
                                                                                                                                                                              }
                                                                                                                                                                            }

                                                                                                                                                                            else
                                                                                                                                                                            {
                                                                                                                                                                              v18 = 84;
                                                                                                                                                                            }
                                                                                                                                                                          }

                                                                                                                                                                          else
                                                                                                                                                                          {
                                                                                                                                                                            v18 = 83;
                                                                                                                                                                          }
                                                                                                                                                                        }

                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                          v18 = 82;
                                                                                                                                                                        }
                                                                                                                                                                      }

                                                                                                                                                                      else
                                                                                                                                                                      {
                                                                                                                                                                        v18 = 81;
                                                                                                                                                                      }
                                                                                                                                                                    }

                                                                                                                                                                    else
                                                                                                                                                                    {
                                                                                                                                                                      v18 = 80;
                                                                                                                                                                    }
                                                                                                                                                                  }

                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                    v18 = 79;
                                                                                                                                                                  }
                                                                                                                                                                }

                                                                                                                                                                else
                                                                                                                                                                {
                                                                                                                                                                  v18 = 78;
                                                                                                                                                                }
                                                                                                                                                              }

                                                                                                                                                              else
                                                                                                                                                              {
                                                                                                                                                                v18 = 77;
                                                                                                                                                              }
                                                                                                                                                            }

                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                              v18 = 76;
                                                                                                                                                            }
                                                                                                                                                          }

                                                                                                                                                          else
                                                                                                                                                          {
                                                                                                                                                            v18 = 75;
                                                                                                                                                          }
                                                                                                                                                        }

                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                          v18 = 74;
                                                                                                                                                        }
                                                                                                                                                      }

                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                        v18 = 73;
                                                                                                                                                      }
                                                                                                                                                    }

                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                      v18 = 72;
                                                                                                                                                    }
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    v18 = 71;
                                                                                                                                                  }
                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                  v18 = 70;
                                                                                                                                                }
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                v18 = 69;
                                                                                                                                              }
                                                                                                                                            }

                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                              v18 = 68;
                                                                                                                                            }
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            v18 = 67;
                                                                                                                                          }
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          v18 = 66;
                                                                                                                                        }
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        v18 = 65;
                                                                                                                                      }
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      v18 = 64;
                                                                                                                                    }
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    v18 = 63;
                                                                                                                                  }
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  v18 = 62;
                                                                                                                                }
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                v18 = 61;
                                                                                                                              }
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              v18 = 60;
                                                                                                                            }
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            v18 = 59;
                                                                                                                          }
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          v18 = 58;
                                                                                                                        }
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        v18 = 57;
                                                                                                                      }
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      v18 = 56;
                                                                                                                    }
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    v18 = 55;
                                                                                                                  }
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  v18 = 54;
                                                                                                                }
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v18 = 53;
                                                                                                              }
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              v18 = 52;
                                                                                                            }
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            v18 = 51;
                                                                                                          }
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          v18 = 50;
                                                                                                        }
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        v18 = 49;
                                                                                                      }
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v18 = 48;
                                                                                                    }
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v18 = 47;
                                                                                                  }
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v18 = 46;
                                                                                                }
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v18 = 45;
                                                                                              }
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v18 = 44;
                                                                                            }
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v18 = 43;
                                                                                          }
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v18 = 42;
                                                                                        }
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v18 = 41;
                                                                                      }
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v18 = 40;
                                                                                    }
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v18 = 39;
                                                                                  }
                                                                                }

                                                                                else
                                                                                {
                                                                                  v18 = 38;
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                v18 = 37;
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              v18 = 36;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            v18 = 35;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          v18 = 34;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        v18 = 33;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v18 = 32;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v18 = 31;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v18 = 30;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v18 = 29;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v18 = 28;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v18 = 27;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v18 = 26;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v18 = 25;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v18 = 24;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v18 = 23;
                                                  }
                                                }

                                                else
                                                {
                                                  v18 = 22;
                                                }
                                              }

                                              else
                                              {
                                                v18 = 21;
                                              }
                                            }

                                            else
                                            {
                                              v18 = 20;
                                            }
                                          }

                                          else
                                          {
                                            v18 = 19;
                                          }
                                        }

                                        else
                                        {
                                          v18 = 18;
                                        }
                                      }

                                      else
                                      {
                                        v18 = 17;
                                      }
                                    }

                                    else
                                    {
                                      v18 = 16;
                                    }
                                  }

                                  else
                                  {
                                    v18 = 15;
                                  }
                                }

                                else
                                {
                                  v18 = 14;
                                }
                              }

                              else
                              {
                                v18 = 13;
                              }
                            }

                            else
                            {
                              v18 = 12;
                            }
                          }

                          else
                          {
                            v18 = 11;
                          }
                        }

                        else
                        {
                          v18 = 10;
                        }
                      }

                      else
                      {
                        v18 = 9;
                      }
                    }

                    else
                    {
                      v18 = 8;
                    }
                  }

                  else
                  {
                    v18 = 7;
                  }
                }

                else
                {
                  v18 = 6;
                }
              }

              else
              {
                v18 = 5;
              }
            }

            else
            {
              v18 = 4;
            }
          }
        }

        else
        {
          v18 = 2;
        }
      }

      else
      {
        v18 = 1;
      }

      [(_CPResultSectionForFeedback *)v5 setKnownBundleIdentifier:v18];
      goto LABEL_375;
    }

LABEL_195:

    bundleIdentifier3 = [facadeCopy bundleIdentifier];
    v20 = [bundleIdentifier3 copy];
    [(_CPResultSectionForFeedback *)v5 setBundleIdentifier:v20];
  }

LABEL_375:
  -[_CPResultSectionForFeedback setIsInitiallyHidden:](v5, "setIsInitiallyHidden:", [facadeCopy isInitiallyHidden]);
  -[_CPResultSectionForFeedback setTotalAvailableResults:](v5, "setTotalAvailableResults:", [facadeCopy totalAvailableResults]);
  titleButtonItem = [facadeCopy titleButtonItem];

  if (titleButtonItem)
  {
    v22 = [_CPButtonForFeedback alloc];
    titleButtonItem2 = [facadeCopy titleButtonItem];
    v24 = [(_CPButtonForFeedback *)v22 initWithFacade:titleButtonItem2];
    [(_CPResultSectionForFeedback *)v5 setTitleButtonItem:v24];
  }

  v25 = v5;

LABEL_378:
  v26 = *MEMORY[0x1E69E9840];
  return v5;
}

@end
@interface BMPhotosUserAnalytics
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMPhotosUserAnalytics)initWithIdentifier:(id)a3 userEvent:(id)a4 containsVIP:(id)a5 faceCount:(id)a6 containsPets:(id)a7 capturedAtHome:(id)a8 capturedAtWork:(id)a9 capturedAtFrequentLocation:(id)a10 capturedOnTrip:(id)a11 capturedOnShortTrip:(id)a12 isDocument:(id)a13 isMeme:(id)a14 isScreenshot:(id)a15 isFavorite:(id)a16 isCapturedOnWeekend:(id)a17 isCapturedAtPrivateEvent:(id)a18 isCapturedOnHoliday:(id)a19 mediaType:(int)a20 importSource:(int)a21 assetAge:(int)a22 userLibrarySize:(int)a23 userNumTrips:(id)a24 userNumVIPPeople:(id)a25 userNumFavorites:(id)a26 userHasVIP:(id)a27 userHasHome:(id)a28 userHasPet:(id)a29 containsBaby:(id)a30 containsSocialGroup:(id)a31 containsMyPet:(id)a32 containsCoWorker:(id)a33 containsFamily:(id)a34 containsFriends:(id)a35 containsPartner:(id)a36 containsParent:(id)a37 containsSibling:(id)a38 containsChild:(id)a39 isCoupon:(id)a40 isRecipe:(id)a41 isReceipt:(id)a42 isRecentView:(id)a43 isRecentEdit:(id)a44 isRecentShare:(id)a45 isRecentFavorite:(id)a46 isContainedInSharedAlbum:(id)a47 isContainedInOnThisDay:(id)a48 capturedAtAOI:(id)a49 capturedAtPOI:(id)a50 capturedAtROI:(id)a51 capturedAtBusiness:(id)a52 isCapturedAtPublicEvent:(id)a53 isContainedInVisualTrend:(id)a54 isContainedInActivity:(id)a55 isContainedInChildActivity:(id)a56 userLibraryAgeInDays:(int)a57 userisDAU:(id)a58;
- (BMPhotosUserAnalytics)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMPhotosUserAnalytics

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMPhotosUserAnalytics *)self identifier];
    v7 = [v5 identifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMPhotosUserAnalytics *)self identifier];
      v10 = [v5 identifier];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_261;
      }
    }

    v13 = [(BMPhotosUserAnalytics *)self userEvent];
    v14 = [v5 userEvent];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMPhotosUserAnalytics *)self userEvent];
      v17 = [v5 userEvent];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_261;
      }
    }

    if (!-[BMPhotosUserAnalytics hasContainsVIP](self, "hasContainsVIP") && ![v5 hasContainsVIP] || -[BMPhotosUserAnalytics hasContainsVIP](self, "hasContainsVIP") && objc_msgSend(v5, "hasContainsVIP") && (v19 = -[BMPhotosUserAnalytics containsVIP](self, "containsVIP"), v19 == objc_msgSend(v5, "containsVIP")))
    {
      if (!-[BMPhotosUserAnalytics hasFaceCount](self, "hasFaceCount") && ![v5 hasFaceCount] || -[BMPhotosUserAnalytics hasFaceCount](self, "hasFaceCount") && objc_msgSend(v5, "hasFaceCount") && (v20 = -[BMPhotosUserAnalytics faceCount](self, "faceCount"), v20 == objc_msgSend(v5, "faceCount")))
      {
        if (!-[BMPhotosUserAnalytics hasContainsPets](self, "hasContainsPets") && ![v5 hasContainsPets] || -[BMPhotosUserAnalytics hasContainsPets](self, "hasContainsPets") && objc_msgSend(v5, "hasContainsPets") && (v21 = -[BMPhotosUserAnalytics containsPets](self, "containsPets"), v21 == objc_msgSend(v5, "containsPets")))
        {
          if (!-[BMPhotosUserAnalytics hasCapturedAtHome](self, "hasCapturedAtHome") && ![v5 hasCapturedAtHome] || -[BMPhotosUserAnalytics hasCapturedAtHome](self, "hasCapturedAtHome") && objc_msgSend(v5, "hasCapturedAtHome") && (v22 = -[BMPhotosUserAnalytics capturedAtHome](self, "capturedAtHome"), v22 == objc_msgSend(v5, "capturedAtHome")))
          {
            if (!-[BMPhotosUserAnalytics hasCapturedAtWork](self, "hasCapturedAtWork") && ![v5 hasCapturedAtWork] || -[BMPhotosUserAnalytics hasCapturedAtWork](self, "hasCapturedAtWork") && objc_msgSend(v5, "hasCapturedAtWork") && (v23 = -[BMPhotosUserAnalytics capturedAtWork](self, "capturedAtWork"), v23 == objc_msgSend(v5, "capturedAtWork")))
            {
              if (!-[BMPhotosUserAnalytics hasCapturedAtFrequentLocation](self, "hasCapturedAtFrequentLocation") && ![v5 hasCapturedAtFrequentLocation] || -[BMPhotosUserAnalytics hasCapturedAtFrequentLocation](self, "hasCapturedAtFrequentLocation") && objc_msgSend(v5, "hasCapturedAtFrequentLocation") && (v24 = -[BMPhotosUserAnalytics capturedAtFrequentLocation](self, "capturedAtFrequentLocation"), v24 == objc_msgSend(v5, "capturedAtFrequentLocation")))
              {
                if (!-[BMPhotosUserAnalytics hasCapturedOnTrip](self, "hasCapturedOnTrip") && ![v5 hasCapturedOnTrip] || -[BMPhotosUserAnalytics hasCapturedOnTrip](self, "hasCapturedOnTrip") && objc_msgSend(v5, "hasCapturedOnTrip") && (v25 = -[BMPhotosUserAnalytics capturedOnTrip](self, "capturedOnTrip"), v25 == objc_msgSend(v5, "capturedOnTrip")))
                {
                  if (!-[BMPhotosUserAnalytics hasCapturedOnShortTrip](self, "hasCapturedOnShortTrip") && ![v5 hasCapturedOnShortTrip] || -[BMPhotosUserAnalytics hasCapturedOnShortTrip](self, "hasCapturedOnShortTrip") && objc_msgSend(v5, "hasCapturedOnShortTrip") && (v26 = -[BMPhotosUserAnalytics capturedOnShortTrip](self, "capturedOnShortTrip"), v26 == objc_msgSend(v5, "capturedOnShortTrip")))
                  {
                    if (!-[BMPhotosUserAnalytics hasIsDocument](self, "hasIsDocument") && ![v5 hasIsDocument] || -[BMPhotosUserAnalytics hasIsDocument](self, "hasIsDocument") && objc_msgSend(v5, "hasIsDocument") && (v27 = -[BMPhotosUserAnalytics isDocument](self, "isDocument"), v27 == objc_msgSend(v5, "isDocument")))
                    {
                      if (!-[BMPhotosUserAnalytics hasIsMeme](self, "hasIsMeme") && ![v5 hasIsMeme] || -[BMPhotosUserAnalytics hasIsMeme](self, "hasIsMeme") && objc_msgSend(v5, "hasIsMeme") && (v28 = -[BMPhotosUserAnalytics isMeme](self, "isMeme"), v28 == objc_msgSend(v5, "isMeme")))
                      {
                        if (!-[BMPhotosUserAnalytics hasIsScreenshot](self, "hasIsScreenshot") && ![v5 hasIsScreenshot] || -[BMPhotosUserAnalytics hasIsScreenshot](self, "hasIsScreenshot") && objc_msgSend(v5, "hasIsScreenshot") && (v29 = -[BMPhotosUserAnalytics isScreenshot](self, "isScreenshot"), v29 == objc_msgSend(v5, "isScreenshot")))
                        {
                          if (!-[BMPhotosUserAnalytics hasIsFavorite](self, "hasIsFavorite") && ![v5 hasIsFavorite] || -[BMPhotosUserAnalytics hasIsFavorite](self, "hasIsFavorite") && objc_msgSend(v5, "hasIsFavorite") && (v30 = -[BMPhotosUserAnalytics isFavorite](self, "isFavorite"), v30 == objc_msgSend(v5, "isFavorite")))
                          {
                            if (!-[BMPhotosUserAnalytics hasIsCapturedOnWeekend](self, "hasIsCapturedOnWeekend") && ![v5 hasIsCapturedOnWeekend] || -[BMPhotosUserAnalytics hasIsCapturedOnWeekend](self, "hasIsCapturedOnWeekend") && objc_msgSend(v5, "hasIsCapturedOnWeekend") && (v31 = -[BMPhotosUserAnalytics isCapturedOnWeekend](self, "isCapturedOnWeekend"), v31 == objc_msgSend(v5, "isCapturedOnWeekend")))
                            {
                              if (!-[BMPhotosUserAnalytics hasIsCapturedAtPrivateEvent](self, "hasIsCapturedAtPrivateEvent") && ![v5 hasIsCapturedAtPrivateEvent] || -[BMPhotosUserAnalytics hasIsCapturedAtPrivateEvent](self, "hasIsCapturedAtPrivateEvent") && objc_msgSend(v5, "hasIsCapturedAtPrivateEvent") && (v32 = -[BMPhotosUserAnalytics isCapturedAtPrivateEvent](self, "isCapturedAtPrivateEvent"), v32 == objc_msgSend(v5, "isCapturedAtPrivateEvent")))
                              {
                                if (!-[BMPhotosUserAnalytics hasIsCapturedOnHoliday](self, "hasIsCapturedOnHoliday") && ![v5 hasIsCapturedOnHoliday] || -[BMPhotosUserAnalytics hasIsCapturedOnHoliday](self, "hasIsCapturedOnHoliday") && objc_msgSend(v5, "hasIsCapturedOnHoliday") && (v33 = -[BMPhotosUserAnalytics isCapturedOnHoliday](self, "isCapturedOnHoliday"), v33 == objc_msgSend(v5, "isCapturedOnHoliday")))
                                {
                                  v34 = [(BMPhotosUserAnalytics *)self mediaType];
                                  if (v34 == [v5 mediaType])
                                  {
                                    v35 = [(BMPhotosUserAnalytics *)self importSource];
                                    if (v35 == [v5 importSource])
                                    {
                                      v36 = [(BMPhotosUserAnalytics *)self assetAge];
                                      if (v36 == [v5 assetAge])
                                      {
                                        v37 = [(BMPhotosUserAnalytics *)self userLibrarySize];
                                        if (v37 == [v5 userLibrarySize])
                                        {
                                          if (!-[BMPhotosUserAnalytics hasUserNumTrips](self, "hasUserNumTrips") && ![v5 hasUserNumTrips] || -[BMPhotosUserAnalytics hasUserNumTrips](self, "hasUserNumTrips") && objc_msgSend(v5, "hasUserNumTrips") && (v38 = -[BMPhotosUserAnalytics userNumTrips](self, "userNumTrips"), v38 == objc_msgSend(v5, "userNumTrips")))
                                          {
                                            if (!-[BMPhotosUserAnalytics hasUserNumVIPPeople](self, "hasUserNumVIPPeople") && ![v5 hasUserNumVIPPeople] || -[BMPhotosUserAnalytics hasUserNumVIPPeople](self, "hasUserNumVIPPeople") && objc_msgSend(v5, "hasUserNumVIPPeople") && (v39 = -[BMPhotosUserAnalytics userNumVIPPeople](self, "userNumVIPPeople"), v39 == objc_msgSend(v5, "userNumVIPPeople")))
                                            {
                                              if (!-[BMPhotosUserAnalytics hasUserNumFavorites](self, "hasUserNumFavorites") && ![v5 hasUserNumFavorites] || -[BMPhotosUserAnalytics hasUserNumFavorites](self, "hasUserNumFavorites") && objc_msgSend(v5, "hasUserNumFavorites") && (v40 = -[BMPhotosUserAnalytics userNumFavorites](self, "userNumFavorites"), v40 == objc_msgSend(v5, "userNumFavorites")))
                                              {
                                                if (!-[BMPhotosUserAnalytics hasUserHasVIP](self, "hasUserHasVIP") && ![v5 hasUserHasVIP] || -[BMPhotosUserAnalytics hasUserHasVIP](self, "hasUserHasVIP") && objc_msgSend(v5, "hasUserHasVIP") && (v41 = -[BMPhotosUserAnalytics userHasVIP](self, "userHasVIP"), v41 == objc_msgSend(v5, "userHasVIP")))
                                                {
                                                  if (!-[BMPhotosUserAnalytics hasUserHasHome](self, "hasUserHasHome") && ![v5 hasUserHasHome] || -[BMPhotosUserAnalytics hasUserHasHome](self, "hasUserHasHome") && objc_msgSend(v5, "hasUserHasHome") && (v42 = -[BMPhotosUserAnalytics userHasHome](self, "userHasHome"), v42 == objc_msgSend(v5, "userHasHome")))
                                                  {
                                                    if (!-[BMPhotosUserAnalytics hasUserHasPet](self, "hasUserHasPet") && ![v5 hasUserHasPet] || -[BMPhotosUserAnalytics hasUserHasPet](self, "hasUserHasPet") && objc_msgSend(v5, "hasUserHasPet") && (v43 = -[BMPhotosUserAnalytics userHasPet](self, "userHasPet"), v43 == objc_msgSend(v5, "userHasPet")))
                                                    {
                                                      if (!-[BMPhotosUserAnalytics hasContainsBaby](self, "hasContainsBaby") && ![v5 hasContainsBaby] || -[BMPhotosUserAnalytics hasContainsBaby](self, "hasContainsBaby") && objc_msgSend(v5, "hasContainsBaby") && (v44 = -[BMPhotosUserAnalytics containsBaby](self, "containsBaby"), v44 == objc_msgSend(v5, "containsBaby")))
                                                      {
                                                        if (!-[BMPhotosUserAnalytics hasContainsSocialGroup](self, "hasContainsSocialGroup") && ![v5 hasContainsSocialGroup] || -[BMPhotosUserAnalytics hasContainsSocialGroup](self, "hasContainsSocialGroup") && objc_msgSend(v5, "hasContainsSocialGroup") && (v45 = -[BMPhotosUserAnalytics containsSocialGroup](self, "containsSocialGroup"), v45 == objc_msgSend(v5, "containsSocialGroup")))
                                                        {
                                                          if (!-[BMPhotosUserAnalytics hasContainsMyPet](self, "hasContainsMyPet") && ![v5 hasContainsMyPet] || -[BMPhotosUserAnalytics hasContainsMyPet](self, "hasContainsMyPet") && objc_msgSend(v5, "hasContainsMyPet") && (v46 = -[BMPhotosUserAnalytics containsMyPet](self, "containsMyPet"), v46 == objc_msgSend(v5, "containsMyPet")))
                                                          {
                                                            if (!-[BMPhotosUserAnalytics hasContainsCoWorker](self, "hasContainsCoWorker") && ![v5 hasContainsCoWorker] || -[BMPhotosUserAnalytics hasContainsCoWorker](self, "hasContainsCoWorker") && objc_msgSend(v5, "hasContainsCoWorker") && (v47 = -[BMPhotosUserAnalytics containsCoWorker](self, "containsCoWorker"), v47 == objc_msgSend(v5, "containsCoWorker")))
                                                            {
                                                              if (!-[BMPhotosUserAnalytics hasContainsFamily](self, "hasContainsFamily") && ![v5 hasContainsFamily] || -[BMPhotosUserAnalytics hasContainsFamily](self, "hasContainsFamily") && objc_msgSend(v5, "hasContainsFamily") && (v48 = -[BMPhotosUserAnalytics containsFamily](self, "containsFamily"), v48 == objc_msgSend(v5, "containsFamily")))
                                                              {
                                                                if (!-[BMPhotosUserAnalytics hasContainsFriends](self, "hasContainsFriends") && ![v5 hasContainsFriends] || -[BMPhotosUserAnalytics hasContainsFriends](self, "hasContainsFriends") && objc_msgSend(v5, "hasContainsFriends") && (v49 = -[BMPhotosUserAnalytics containsFriends](self, "containsFriends"), v49 == objc_msgSend(v5, "containsFriends")))
                                                                {
                                                                  if (!-[BMPhotosUserAnalytics hasContainsPartner](self, "hasContainsPartner") && ![v5 hasContainsPartner] || -[BMPhotosUserAnalytics hasContainsPartner](self, "hasContainsPartner") && objc_msgSend(v5, "hasContainsPartner") && (v50 = -[BMPhotosUserAnalytics containsPartner](self, "containsPartner"), v50 == objc_msgSend(v5, "containsPartner")))
                                                                  {
                                                                    if (!-[BMPhotosUserAnalytics hasContainsParent](self, "hasContainsParent") && ![v5 hasContainsParent] || -[BMPhotosUserAnalytics hasContainsParent](self, "hasContainsParent") && objc_msgSend(v5, "hasContainsParent") && (v51 = -[BMPhotosUserAnalytics containsParent](self, "containsParent"), v51 == objc_msgSend(v5, "containsParent")))
                                                                    {
                                                                      if (!-[BMPhotosUserAnalytics hasContainsSibling](self, "hasContainsSibling") && ![v5 hasContainsSibling] || -[BMPhotosUserAnalytics hasContainsSibling](self, "hasContainsSibling") && objc_msgSend(v5, "hasContainsSibling") && (v52 = -[BMPhotosUserAnalytics containsSibling](self, "containsSibling"), v52 == objc_msgSend(v5, "containsSibling")))
                                                                      {
                                                                        if (!-[BMPhotosUserAnalytics hasContainsChild](self, "hasContainsChild") && ![v5 hasContainsChild] || -[BMPhotosUserAnalytics hasContainsChild](self, "hasContainsChild") && objc_msgSend(v5, "hasContainsChild") && (v53 = -[BMPhotosUserAnalytics containsChild](self, "containsChild"), v53 == objc_msgSend(v5, "containsChild")))
                                                                        {
                                                                          if (!-[BMPhotosUserAnalytics hasIsCoupon](self, "hasIsCoupon") && ![v5 hasIsCoupon] || -[BMPhotosUserAnalytics hasIsCoupon](self, "hasIsCoupon") && objc_msgSend(v5, "hasIsCoupon") && (v54 = -[BMPhotosUserAnalytics isCoupon](self, "isCoupon"), v54 == objc_msgSend(v5, "isCoupon")))
                                                                          {
                                                                            if (!-[BMPhotosUserAnalytics hasIsRecipe](self, "hasIsRecipe") && ![v5 hasIsRecipe] || -[BMPhotosUserAnalytics hasIsRecipe](self, "hasIsRecipe") && objc_msgSend(v5, "hasIsRecipe") && (v55 = -[BMPhotosUserAnalytics isRecipe](self, "isRecipe"), v55 == objc_msgSend(v5, "isRecipe")))
                                                                            {
                                                                              if (!-[BMPhotosUserAnalytics hasIsReceipt](self, "hasIsReceipt") && ![v5 hasIsReceipt] || -[BMPhotosUserAnalytics hasIsReceipt](self, "hasIsReceipt") && objc_msgSend(v5, "hasIsReceipt") && (v56 = -[BMPhotosUserAnalytics isReceipt](self, "isReceipt"), v56 == objc_msgSend(v5, "isReceipt")))
                                                                              {
                                                                                if (!-[BMPhotosUserAnalytics hasIsRecentView](self, "hasIsRecentView") && ![v5 hasIsRecentView] || -[BMPhotosUserAnalytics hasIsRecentView](self, "hasIsRecentView") && objc_msgSend(v5, "hasIsRecentView") && (v57 = -[BMPhotosUserAnalytics isRecentView](self, "isRecentView"), v57 == objc_msgSend(v5, "isRecentView")))
                                                                                {
                                                                                  if (!-[BMPhotosUserAnalytics hasIsRecentEdit](self, "hasIsRecentEdit") && ![v5 hasIsRecentEdit] || -[BMPhotosUserAnalytics hasIsRecentEdit](self, "hasIsRecentEdit") && objc_msgSend(v5, "hasIsRecentEdit") && (v58 = -[BMPhotosUserAnalytics isRecentEdit](self, "isRecentEdit"), v58 == objc_msgSend(v5, "isRecentEdit")))
                                                                                  {
                                                                                    if (!-[BMPhotosUserAnalytics hasIsRecentShare](self, "hasIsRecentShare") && ![v5 hasIsRecentShare] || -[BMPhotosUserAnalytics hasIsRecentShare](self, "hasIsRecentShare") && objc_msgSend(v5, "hasIsRecentShare") && (v59 = -[BMPhotosUserAnalytics isRecentShare](self, "isRecentShare"), v59 == objc_msgSend(v5, "isRecentShare")))
                                                                                    {
                                                                                      if (!-[BMPhotosUserAnalytics hasIsRecentFavorite](self, "hasIsRecentFavorite") && ![v5 hasIsRecentFavorite] || -[BMPhotosUserAnalytics hasIsRecentFavorite](self, "hasIsRecentFavorite") && objc_msgSend(v5, "hasIsRecentFavorite") && (v60 = -[BMPhotosUserAnalytics isRecentFavorite](self, "isRecentFavorite"), v60 == objc_msgSend(v5, "isRecentFavorite")))
                                                                                      {
                                                                                        if (!-[BMPhotosUserAnalytics hasIsContainedInSharedAlbum](self, "hasIsContainedInSharedAlbum") && ![v5 hasIsContainedInSharedAlbum] || -[BMPhotosUserAnalytics hasIsContainedInSharedAlbum](self, "hasIsContainedInSharedAlbum") && objc_msgSend(v5, "hasIsContainedInSharedAlbum") && (v61 = -[BMPhotosUserAnalytics isContainedInSharedAlbum](self, "isContainedInSharedAlbum"), v61 == objc_msgSend(v5, "isContainedInSharedAlbum")))
                                                                                        {
                                                                                          if (!-[BMPhotosUserAnalytics hasIsContainedInOnThisDay](self, "hasIsContainedInOnThisDay") && ![v5 hasIsContainedInOnThisDay] || -[BMPhotosUserAnalytics hasIsContainedInOnThisDay](self, "hasIsContainedInOnThisDay") && objc_msgSend(v5, "hasIsContainedInOnThisDay") && (v62 = -[BMPhotosUserAnalytics isContainedInOnThisDay](self, "isContainedInOnThisDay"), v62 == objc_msgSend(v5, "isContainedInOnThisDay")))
                                                                                          {
                                                                                            if (!-[BMPhotosUserAnalytics hasCapturedAtAOI](self, "hasCapturedAtAOI") && ![v5 hasCapturedAtAOI] || -[BMPhotosUserAnalytics hasCapturedAtAOI](self, "hasCapturedAtAOI") && objc_msgSend(v5, "hasCapturedAtAOI") && (v63 = -[BMPhotosUserAnalytics capturedAtAOI](self, "capturedAtAOI"), v63 == objc_msgSend(v5, "capturedAtAOI")))
                                                                                            {
                                                                                              if (!-[BMPhotosUserAnalytics hasCapturedAtPOI](self, "hasCapturedAtPOI") && ![v5 hasCapturedAtPOI] || -[BMPhotosUserAnalytics hasCapturedAtPOI](self, "hasCapturedAtPOI") && objc_msgSend(v5, "hasCapturedAtPOI") && (v64 = -[BMPhotosUserAnalytics capturedAtPOI](self, "capturedAtPOI"), v64 == objc_msgSend(v5, "capturedAtPOI")))
                                                                                              {
                                                                                                if (!-[BMPhotosUserAnalytics hasCapturedAtROI](self, "hasCapturedAtROI") && ![v5 hasCapturedAtROI] || -[BMPhotosUserAnalytics hasCapturedAtROI](self, "hasCapturedAtROI") && objc_msgSend(v5, "hasCapturedAtROI") && (v65 = -[BMPhotosUserAnalytics capturedAtROI](self, "capturedAtROI"), v65 == objc_msgSend(v5, "capturedAtROI")))
                                                                                                {
                                                                                                  if (!-[BMPhotosUserAnalytics hasCapturedAtBusiness](self, "hasCapturedAtBusiness") && ![v5 hasCapturedAtBusiness] || -[BMPhotosUserAnalytics hasCapturedAtBusiness](self, "hasCapturedAtBusiness") && objc_msgSend(v5, "hasCapturedAtBusiness") && (v66 = -[BMPhotosUserAnalytics capturedAtBusiness](self, "capturedAtBusiness"), v66 == objc_msgSend(v5, "capturedAtBusiness")))
                                                                                                  {
                                                                                                    if (!-[BMPhotosUserAnalytics hasIsCapturedAtPublicEvent](self, "hasIsCapturedAtPublicEvent") && ![v5 hasIsCapturedAtPublicEvent] || -[BMPhotosUserAnalytics hasIsCapturedAtPublicEvent](self, "hasIsCapturedAtPublicEvent") && objc_msgSend(v5, "hasIsCapturedAtPublicEvent") && (v67 = -[BMPhotosUserAnalytics isCapturedAtPublicEvent](self, "isCapturedAtPublicEvent"), v67 == objc_msgSend(v5, "isCapturedAtPublicEvent")))
                                                                                                    {
                                                                                                      if (!-[BMPhotosUserAnalytics hasIsContainedInVisualTrend](self, "hasIsContainedInVisualTrend") && ![v5 hasIsContainedInVisualTrend] || -[BMPhotosUserAnalytics hasIsContainedInVisualTrend](self, "hasIsContainedInVisualTrend") && objc_msgSend(v5, "hasIsContainedInVisualTrend") && (v68 = -[BMPhotosUserAnalytics isContainedInVisualTrend](self, "isContainedInVisualTrend"), v68 == objc_msgSend(v5, "isContainedInVisualTrend")))
                                                                                                      {
                                                                                                        if (!-[BMPhotosUserAnalytics hasIsContainedInActivity](self, "hasIsContainedInActivity") && ![v5 hasIsContainedInActivity] || -[BMPhotosUserAnalytics hasIsContainedInActivity](self, "hasIsContainedInActivity") && objc_msgSend(v5, "hasIsContainedInActivity") && (v69 = -[BMPhotosUserAnalytics isContainedInActivity](self, "isContainedInActivity"), v69 == objc_msgSend(v5, "isContainedInActivity")))
                                                                                                        {
                                                                                                          if (!-[BMPhotosUserAnalytics hasIsContainedInChildActivity](self, "hasIsContainedInChildActivity") && ![v5 hasIsContainedInChildActivity] || -[BMPhotosUserAnalytics hasIsContainedInChildActivity](self, "hasIsContainedInChildActivity") && objc_msgSend(v5, "hasIsContainedInChildActivity") && (v70 = -[BMPhotosUserAnalytics isContainedInChildActivity](self, "isContainedInChildActivity"), v70 == objc_msgSend(v5, "isContainedInChildActivity")))
                                                                                                          {
                                                                                                            v71 = [(BMPhotosUserAnalytics *)self userLibraryAgeInDays];
                                                                                                            if (v71 == [v5 userLibraryAgeInDays])
                                                                                                            {
                                                                                                              if (!-[BMPhotosUserAnalytics hasUserisDAU](self, "hasUserisDAU") && ![v5 hasUserisDAU])
                                                                                                              {
                                                                                                                v12 = 1;
                                                                                                                goto LABEL_262;
                                                                                                              }

                                                                                                              if (-[BMPhotosUserAnalytics hasUserisDAU](self, "hasUserisDAU") && [v5 hasUserisDAU])
                                                                                                              {
                                                                                                                [(BMPhotosUserAnalytics *)self userisDAU];
                                                                                                                v73 = v72;
                                                                                                                [v5 userisDAU];
                                                                                                                v12 = v73 == v74;
LABEL_262:

                                                                                                                goto LABEL_263;
                                                                                                              }
                                                                                                            }
                                                                                                          }
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_261:
    v12 = 0;
    goto LABEL_262;
  }

  v12 = 0;
LABEL_263:

  return v12;
}

- (id)jsonDictionary
{
  v178[56] = *MEMORY[0x1E69E9840];
  v3 = [(BMPhotosUserAnalytics *)self identifier];
  v4 = [(BMPhotosUserAnalytics *)self userEvent];
  if ([(BMPhotosUserAnalytics *)self hasContainsVIP])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsVIP](self, "containsVIP")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasFaceCount])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPhotosUserAnalytics faceCount](self, "faceCount")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasContainsPets])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsPets](self, "containsPets")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasCapturedAtHome])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics capturedAtHome](self, "capturedAtHome")}];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasCapturedAtWork])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics capturedAtWork](self, "capturedAtWork")}];
  }

  else
  {
    v9 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasCapturedAtFrequentLocation])
  {
    v176 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics capturedAtFrequentLocation](self, "capturedAtFrequentLocation")}];
  }

  else
  {
    v176 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasCapturedOnTrip])
  {
    v175 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics capturedOnTrip](self, "capturedOnTrip")}];
  }

  else
  {
    v175 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasCapturedOnShortTrip])
  {
    v174 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics capturedOnShortTrip](self, "capturedOnShortTrip")}];
  }

  else
  {
    v174 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsDocument])
  {
    v173 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isDocument](self, "isDocument")}];
  }

  else
  {
    v173 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsMeme])
  {
    v172 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isMeme](self, "isMeme")}];
  }

  else
  {
    v172 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsScreenshot])
  {
    v171 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isScreenshot](self, "isScreenshot")}];
  }

  else
  {
    v171 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsFavorite])
  {
    v170 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isFavorite](self, "isFavorite")}];
  }

  else
  {
    v170 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsCapturedOnWeekend])
  {
    v169 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isCapturedOnWeekend](self, "isCapturedOnWeekend")}];
  }

  else
  {
    v169 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsCapturedAtPrivateEvent])
  {
    v168 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isCapturedAtPrivateEvent](self, "isCapturedAtPrivateEvent")}];
  }

  else
  {
    v168 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsCapturedOnHoliday])
  {
    v167 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isCapturedOnHoliday](self, "isCapturedOnHoliday")}];
  }

  else
  {
    v167 = 0;
  }

  v166 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPhotosUserAnalytics mediaType](self, "mediaType")}];
  v165 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPhotosUserAnalytics importSource](self, "importSource")}];
  v164 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPhotosUserAnalytics assetAge](self, "assetAge")}];
  v163 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPhotosUserAnalytics userLibrarySize](self, "userLibrarySize")}];
  if ([(BMPhotosUserAnalytics *)self hasUserNumTrips])
  {
    v162 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPhotosUserAnalytics userNumTrips](self, "userNumTrips")}];
  }

  else
  {
    v162 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasUserNumVIPPeople])
  {
    v161 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPhotosUserAnalytics userNumVIPPeople](self, "userNumVIPPeople")}];
  }

  else
  {
    v161 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasUserNumFavorites])
  {
    v160 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPhotosUserAnalytics userNumFavorites](self, "userNumFavorites")}];
  }

  else
  {
    v160 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasUserHasVIP])
  {
    v159 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics userHasVIP](self, "userHasVIP")}];
  }

  else
  {
    v159 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasUserHasHome])
  {
    v158 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics userHasHome](self, "userHasHome")}];
  }

  else
  {
    v158 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasUserHasPet])
  {
    v157 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics userHasPet](self, "userHasPet")}];
  }

  else
  {
    v157 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasContainsBaby])
  {
    v156 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsBaby](self, "containsBaby")}];
  }

  else
  {
    v156 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasContainsSocialGroup])
  {
    v155 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsSocialGroup](self, "containsSocialGroup")}];
  }

  else
  {
    v155 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasContainsMyPet])
  {
    v154 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsMyPet](self, "containsMyPet")}];
  }

  else
  {
    v154 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasContainsCoWorker])
  {
    v153 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsCoWorker](self, "containsCoWorker")}];
  }

  else
  {
    v153 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasContainsFamily])
  {
    v152 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsFamily](self, "containsFamily")}];
  }

  else
  {
    v152 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasContainsFriends])
  {
    v151 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsFriends](self, "containsFriends")}];
  }

  else
  {
    v151 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasContainsPartner])
  {
    v150 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsPartner](self, "containsPartner")}];
  }

  else
  {
    v150 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasContainsParent])
  {
    v149 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsParent](self, "containsParent")}];
  }

  else
  {
    v149 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasContainsSibling])
  {
    v148 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsSibling](self, "containsSibling")}];
  }

  else
  {
    v148 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasContainsChild])
  {
    v147 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsChild](self, "containsChild")}];
  }

  else
  {
    v147 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsCoupon])
  {
    v146 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isCoupon](self, "isCoupon")}];
  }

  else
  {
    v146 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsRecipe])
  {
    v145 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isRecipe](self, "isRecipe")}];
  }

  else
  {
    v145 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsReceipt])
  {
    v144 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isReceipt](self, "isReceipt")}];
  }

  else
  {
    v144 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsRecentView])
  {
    v143 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isRecentView](self, "isRecentView")}];
  }

  else
  {
    v143 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsRecentEdit])
  {
    v142 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isRecentEdit](self, "isRecentEdit")}];
  }

  else
  {
    v142 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsRecentShare])
  {
    v141 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isRecentShare](self, "isRecentShare")}];
  }

  else
  {
    v141 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsRecentFavorite])
  {
    v140 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isRecentFavorite](self, "isRecentFavorite")}];
  }

  else
  {
    v140 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsContainedInSharedAlbum])
  {
    v139 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isContainedInSharedAlbum](self, "isContainedInSharedAlbum")}];
  }

  else
  {
    v139 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsContainedInOnThisDay])
  {
    v138 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isContainedInOnThisDay](self, "isContainedInOnThisDay")}];
  }

  else
  {
    v138 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasCapturedAtAOI])
  {
    v137 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics capturedAtAOI](self, "capturedAtAOI")}];
  }

  else
  {
    v137 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasCapturedAtPOI])
  {
    v136 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics capturedAtPOI](self, "capturedAtPOI")}];
  }

  else
  {
    v136 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasCapturedAtROI])
  {
    v135 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics capturedAtROI](self, "capturedAtROI")}];
  }

  else
  {
    v135 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasCapturedAtBusiness])
  {
    v134 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics capturedAtBusiness](self, "capturedAtBusiness")}];
  }

  else
  {
    v134 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsCapturedAtPublicEvent])
  {
    v133 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isCapturedAtPublicEvent](self, "isCapturedAtPublicEvent")}];
  }

  else
  {
    v133 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsContainedInVisualTrend])
  {
    v132 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isContainedInVisualTrend](self, "isContainedInVisualTrend")}];
  }

  else
  {
    v132 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsContainedInActivity])
  {
    v131 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isContainedInActivity](self, "isContainedInActivity")}];
  }

  else
  {
    v131 = 0;
  }

  if ([(BMPhotosUserAnalytics *)self hasIsContainedInChildActivity])
  {
    v130 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isContainedInChildActivity](self, "isContainedInChildActivity")}];
  }

  else
  {
    v130 = 0;
  }

  v129 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPhotosUserAnalytics userLibraryAgeInDays](self, "userLibraryAgeInDays")}];
  if (![(BMPhotosUserAnalytics *)self hasUserisDAU]|| ([(BMPhotosUserAnalytics *)self userisDAU], fabs(v10) == INFINITY))
  {
    v12 = 0;
  }

  else
  {
    [(BMPhotosUserAnalytics *)self userisDAU];
    v11 = MEMORY[0x1E696AD98];
    [(BMPhotosUserAnalytics *)self userisDAU];
    v12 = [v11 numberWithDouble:?];
  }

  v177[0] = @"identifier";
  v13 = v3;
  if (!v3)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v118 = v13;
  v178[0] = v13;
  v177[1] = @"userEvent";
  v14 = v4;
  if (!v4)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v117 = v14;
  v178[1] = v14;
  v177[2] = @"containsVIP";
  v15 = v5;
  if (!v5)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v116 = v15;
  v178[2] = v15;
  v177[3] = @"faceCount";
  v16 = v6;
  if (!v6)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v115 = v16;
  v178[3] = v16;
  v177[4] = @"containsPets";
  v17 = v7;
  if (!v7)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v114 = v17;
  v178[4] = v17;
  v177[5] = @"capturedAtHome";
  v18 = v8;
  if (!v8)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v113 = v18;
  v178[5] = v18;
  v177[6] = @"capturedAtWork";
  v19 = v9;
  if (!v9)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v112 = v19;
  v178[6] = v19;
  v177[7] = @"capturedAtFrequentLocation";
  v20 = v176;
  if (!v176)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v178[7] = v20;
  v177[8] = @"capturedOnTrip";
  v21 = v175;
  if (!v175)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v178[8] = v21;
  v177[9] = @"capturedOnShortTrip";
  v22 = v174;
  if (!v174)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v120 = v9;
  v122 = v22;
  v178[9] = v22;
  v177[10] = @"isDocument";
  v23 = v173;
  if (!v173)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v3;
  v121 = v23;
  v178[10] = v23;
  v177[11] = @"isMeme";
  v25 = v172;
  if (!v172)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v25;
  v178[11] = v25;
  v177[12] = @"isScreenshot";
  v27 = v171;
  if (!v171)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
  }

  v111 = v27;
  v178[12] = v27;
  v177[13] = @"isFavorite";
  v28 = v170;
  if (!v170)
  {
    v28 = [MEMORY[0x1E695DFB0] null];
  }

  v110 = v28;
  v178[13] = v28;
  v177[14] = @"isCapturedOnWeekend";
  v29 = v169;
  if (!v169)
  {
    v29 = [MEMORY[0x1E695DFB0] null];
  }

  v109 = v29;
  v178[14] = v29;
  v177[15] = @"isCapturedAtPrivateEvent";
  v30 = v168;
  if (!v168)
  {
    v30 = [MEMORY[0x1E695DFB0] null];
  }

  v108 = v30;
  v178[15] = v30;
  v177[16] = @"isCapturedOnHoliday";
  v31 = v167;
  if (!v167)
  {
    v31 = [MEMORY[0x1E695DFB0] null];
  }

  v107 = v31;
  v178[16] = v31;
  v177[17] = @"mediaType";
  v32 = v166;
  if (!v166)
  {
    v32 = [MEMORY[0x1E695DFB0] null];
  }

  v106 = v32;
  v178[17] = v32;
  v177[18] = @"importSource";
  v33 = v165;
  if (!v165)
  {
    v33 = [MEMORY[0x1E695DFB0] null];
  }

  v105 = v33;
  v178[18] = v33;
  v177[19] = @"assetAge";
  v34 = v164;
  if (!v164)
  {
    v34 = [MEMORY[0x1E695DFB0] null];
  }

  v104 = v34;
  v178[19] = v34;
  v177[20] = @"userLibrarySize";
  v35 = v163;
  if (!v163)
  {
    v35 = [MEMORY[0x1E695DFB0] null];
  }

  v103 = v35;
  v178[20] = v35;
  v177[21] = @"userNumTrips";
  v36 = v162;
  if (!v162)
  {
    v36 = [MEMORY[0x1E695DFB0] null];
  }

  v102 = v36;
  v178[21] = v36;
  v177[22] = @"userNumVIPPeople";
  v37 = v161;
  if (!v161)
  {
    v37 = [MEMORY[0x1E695DFB0] null];
  }

  v101 = v37;
  v178[22] = v37;
  v177[23] = @"userNumFavorites";
  v38 = v160;
  if (!v160)
  {
    v38 = [MEMORY[0x1E695DFB0] null];
  }

  v100 = v38;
  v178[23] = v38;
  v177[24] = @"userHasVIP";
  v39 = v159;
  if (!v159)
  {
    v39 = [MEMORY[0x1E695DFB0] null];
  }

  v99 = v39;
  v178[24] = v39;
  v177[25] = @"userHasHome";
  v40 = v158;
  if (!v158)
  {
    v40 = [MEMORY[0x1E695DFB0] null];
  }

  v98 = v40;
  v178[25] = v40;
  v177[26] = @"userHasPet";
  v41 = v157;
  if (!v157)
  {
    v41 = [MEMORY[0x1E695DFB0] null];
  }

  v97 = v41;
  v178[26] = v41;
  v177[27] = @"containsBaby";
  v42 = v156;
  if (!v156)
  {
    v42 = [MEMORY[0x1E695DFB0] null];
  }

  v96 = v42;
  v178[27] = v42;
  v177[28] = @"containsSocialGroup";
  v43 = v155;
  if (!v155)
  {
    v43 = [MEMORY[0x1E695DFB0] null];
  }

  v95 = v43;
  v178[28] = v43;
  v177[29] = @"containsMyPet";
  v44 = v154;
  if (!v154)
  {
    v44 = [MEMORY[0x1E695DFB0] null];
  }

  v94 = v44;
  v178[29] = v44;
  v177[30] = @"containsCoWorker";
  v45 = v153;
  if (!v153)
  {
    v45 = [MEMORY[0x1E695DFB0] null];
  }

  v93 = v45;
  v178[30] = v45;
  v177[31] = @"containsFamily";
  v46 = v152;
  if (!v152)
  {
    v46 = [MEMORY[0x1E695DFB0] null];
  }

  v92 = v46;
  v178[31] = v46;
  v177[32] = @"containsFriends";
  v47 = v151;
  if (!v151)
  {
    v47 = [MEMORY[0x1E695DFB0] null];
  }

  v91 = v47;
  v178[32] = v47;
  v177[33] = @"containsPartner";
  v48 = v150;
  if (!v150)
  {
    v48 = [MEMORY[0x1E695DFB0] null];
  }

  v90 = v48;
  v178[33] = v48;
  v177[34] = @"containsParent";
  v49 = v149;
  if (!v149)
  {
    v49 = [MEMORY[0x1E695DFB0] null];
  }

  v89 = v49;
  v178[34] = v49;
  v177[35] = @"containsSibling";
  v50 = v148;
  if (!v148)
  {
    v50 = [MEMORY[0x1E695DFB0] null];
  }

  v88 = v50;
  v178[35] = v50;
  v177[36] = @"containsChild";
  v51 = v147;
  if (!v147)
  {
    v51 = [MEMORY[0x1E695DFB0] null];
  }

  v87 = v51;
  v178[36] = v51;
  v177[37] = @"isCoupon";
  v52 = v146;
  if (!v146)
  {
    v52 = [MEMORY[0x1E695DFB0] null];
  }

  v86 = v52;
  v178[37] = v52;
  v177[38] = @"isRecipe";
  v53 = v145;
  if (!v145)
  {
    v53 = [MEMORY[0x1E695DFB0] null];
  }

  v85 = v53;
  v178[38] = v53;
  v177[39] = @"isReceipt";
  v54 = v144;
  if (!v144)
  {
    v54 = [MEMORY[0x1E695DFB0] null];
  }

  v84 = v54;
  v178[39] = v54;
  v177[40] = @"isRecentView";
  v55 = v143;
  if (!v143)
  {
    v55 = [MEMORY[0x1E695DFB0] null];
  }

  v83 = v55;
  v178[40] = v55;
  v177[41] = @"isRecentEdit";
  v56 = v142;
  if (!v142)
  {
    v56 = [MEMORY[0x1E695DFB0] null];
  }

  v82 = v56;
  v178[41] = v56;
  v177[42] = @"isRecentShare";
  v57 = v141;
  if (!v141)
  {
    v57 = [MEMORY[0x1E695DFB0] null];
  }

  v81 = v57;
  v178[42] = v57;
  v177[43] = @"isRecentFavorite";
  v58 = v140;
  if (!v140)
  {
    v58 = [MEMORY[0x1E695DFB0] null];
  }

  v80 = v58;
  v178[43] = v58;
  v177[44] = @"isContainedInSharedAlbum";
  v59 = v139;
  if (!v139)
  {
    v59 = [MEMORY[0x1E695DFB0] null];
  }

  v79 = v59;
  v178[44] = v59;
  v177[45] = @"isContainedInOnThisDay";
  v60 = v138;
  if (!v138)
  {
    v60 = [MEMORY[0x1E695DFB0] null];
  }

  v125 = v6;
  v78 = v60;
  v178[45] = v60;
  v177[46] = @"capturedAtAOI";
  v61 = v137;
  if (!v137)
  {
    v61 = [MEMORY[0x1E695DFB0] null];
  }

  v77 = v61;
  v178[46] = v61;
  v177[47] = @"capturedAtPOI";
  v62 = v136;
  if (!v136)
  {
    v62 = [MEMORY[0x1E695DFB0] null];
  }

  v127 = v4;
  v76 = v62;
  v178[47] = v62;
  v177[48] = @"capturedAtROI";
  v63 = v135;
  if (!v135)
  {
    v63 = [MEMORY[0x1E695DFB0] null];
  }

  v124 = v8;
  v75 = v63;
  v178[48] = v63;
  v177[49] = @"capturedAtBusiness";
  v64 = v134;
  if (!v134)
  {
    v64 = [MEMORY[0x1E695DFB0] null];
  }

  v126 = v5;
  v74 = v64;
  v178[49] = v64;
  v177[50] = @"isCapturedAtPublicEvent";
  v65 = v133;
  if (!v133)
  {
    v65 = [MEMORY[0x1E695DFB0] null];
  }

  v123 = v7;
  v178[50] = v65;
  v177[51] = @"isContainedInVisualTrend";
  v66 = v132;
  if (!v132)
  {
    v66 = [MEMORY[0x1E695DFB0] null];
  }

  v128 = v12;
  v178[51] = v66;
  v177[52] = @"isContainedInActivity";
  v67 = v131;
  if (!v131)
  {
    v67 = [MEMORY[0x1E695DFB0] null];
  }

  v178[52] = v67;
  v177[53] = @"isContainedInChildActivity";
  v68 = v130;
  if (!v130)
  {
    v68 = [MEMORY[0x1E695DFB0] null];
  }

  v178[53] = v68;
  v177[54] = @"userLibraryAgeInDays";
  v69 = v129;
  if (!v129)
  {
    v69 = [MEMORY[0x1E695DFB0] null];
  }

  v178[54] = v69;
  v177[55] = @"userisDAU";
  v70 = v128;
  if (!v128)
  {
    v70 = [MEMORY[0x1E695DFB0] null];
  }

  v178[55] = v70;
  v119 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v178 forKeys:v177 count:56];
  if (!v128)
  {
  }

  v71 = v26;
  if (!v129)
  {

    v71 = v26;
  }

  if (!v130)
  {

    v71 = v26;
  }

  if (!v131)
  {

    v71 = v26;
  }

  if (!v132)
  {

    v71 = v26;
  }

  if (!v133)
  {

    v71 = v26;
  }

  if (!v134)
  {

    v71 = v26;
  }

  if (!v135)
  {

    v71 = v26;
  }

  if (!v136)
  {

    v71 = v26;
  }

  if (!v137)
  {

    v71 = v26;
  }

  if (!v138)
  {

    v71 = v26;
  }

  if (!v139)
  {

    v71 = v26;
  }

  if (!v140)
  {

    v71 = v26;
  }

  if (!v141)
  {

    v71 = v26;
  }

  if (!v142)
  {

    v71 = v26;
  }

  if (!v143)
  {

    v71 = v26;
  }

  if (!v144)
  {

    v71 = v26;
  }

  if (!v145)
  {

    v71 = v26;
  }

  if (!v146)
  {

    v71 = v26;
  }

  if (!v147)
  {

    v71 = v26;
  }

  if (!v148)
  {

    v71 = v26;
  }

  if (!v149)
  {

    v71 = v26;
  }

  if (!v150)
  {

    v71 = v26;
  }

  if (!v151)
  {

    v71 = v26;
  }

  if (!v152)
  {

    v71 = v26;
  }

  if (!v153)
  {

    v71 = v26;
  }

  if (!v154)
  {

    v71 = v26;
  }

  if (!v155)
  {

    v71 = v26;
  }

  if (!v156)
  {

    v71 = v26;
  }

  if (!v157)
  {

    v71 = v26;
  }

  if (!v158)
  {

    v71 = v26;
  }

  if (!v159)
  {

    v71 = v26;
  }

  if (!v160)
  {

    v71 = v26;
  }

  if (!v161)
  {

    v71 = v26;
  }

  if (!v162)
  {

    v71 = v26;
  }

  if (!v163)
  {

    v71 = v26;
  }

  if (!v164)
  {

    v71 = v26;
  }

  if (!v165)
  {

    v71 = v26;
  }

  if (!v166)
  {

    v71 = v26;
  }

  if (!v167)
  {

    v71 = v26;
  }

  if (!v168)
  {

    v71 = v26;
  }

  if (!v169)
  {

    v71 = v26;
  }

  if (!v170)
  {

    v71 = v26;
  }

  if (!v171)
  {

    v71 = v26;
  }

  if (!v172)
  {
  }

  if (!v173)
  {
  }

  if (!v174)
  {
  }

  if (!v175)
  {
  }

  if (v176)
  {
    if (v120)
    {
      goto LABEL_359;
    }
  }

  else
  {

    if (v120)
    {
LABEL_359:
      if (v124)
      {
        goto LABEL_360;
      }

      goto LABEL_370;
    }
  }

  if (v124)
  {
LABEL_360:
    if (v123)
    {
      goto LABEL_361;
    }

    goto LABEL_371;
  }

LABEL_370:

  if (v123)
  {
LABEL_361:
    if (v125)
    {
      goto LABEL_362;
    }

    goto LABEL_372;
  }

LABEL_371:

  if (v125)
  {
LABEL_362:
    if (v126)
    {
      goto LABEL_363;
    }

    goto LABEL_373;
  }

LABEL_372:

  if (v126)
  {
LABEL_363:
    if (v127)
    {
      goto LABEL_364;
    }

LABEL_374:

    if (v24)
    {
      goto LABEL_365;
    }

    goto LABEL_375;
  }

LABEL_373:

  if (!v127)
  {
    goto LABEL_374;
  }

LABEL_364:
  if (v24)
  {
    goto LABEL_365;
  }

LABEL_375:

LABEL_365:
  v72 = *MEMORY[0x1E69E9840];

  return v119;
}

- (BMPhotosUserAnalytics)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v733[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"identifier"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v621 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v621 = v7;
LABEL_4:
    v8 = [v6 objectForKeyedSubscript:@"userEvent"];
    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
LABEL_7:
      v10 = [v6 objectForKeyedSubscript:@"containsVIP"];
      if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v618 = v9;
        v11 = 0;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v618 = v9;
        v11 = v10;
LABEL_10:
        v12 = [v6 objectForKeyedSubscript:@"faceCount"];
        v612 = v11;
        if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v611 = v12;
          v619 = 0;
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v611 = v12;
          v619 = v12;
LABEL_13:
          v13 = [v6 objectForKeyedSubscript:@"containsPets"];
          v615 = v13;
          if (!v13 || (v14 = v13, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v613 = 0;
            goto LABEL_16;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v613 = v14;
LABEL_16:
            v15 = [v6 objectForKeyedSubscript:@"capturedAtHome"];
            v610 = v15;
            if (!v15 || (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v606 = 0;
              goto LABEL_19;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v606 = v16;
LABEL_19:
              v17 = [v6 objectForKeyedSubscript:@"capturedAtWork"];
              v609 = v17;
              if (!v17 || (v18 = v17, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v607 = 0;
                goto LABEL_22;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v607 = v18;
LABEL_22:
                v19 = [v6 objectForKeyedSubscript:@"capturedAtFrequentLocation"];
                v605 = v19;
                if (!v19 || (v20 = v19, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v603 = 0;
                  goto LABEL_25;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v603 = v20;
LABEL_25:
                  v21 = [v6 objectForKeyedSubscript:@"capturedOnTrip"];
                  v602 = v21;
                  if (!v21 || (v22 = v21, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v600 = 0;
                    goto LABEL_28;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v600 = v22;
LABEL_28:
                    v23 = [v6 objectForKeyedSubscript:@"capturedOnShortTrip"];
                    v596 = v23;
                    if (!v23 || (v24 = v23, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v588 = 0;
                      goto LABEL_31;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v588 = v24;
LABEL_31:
                      v25 = [v6 objectForKeyedSubscript:@"isDocument"];
                      v593 = v25;
                      if (!v25 || (v26 = v25, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v589 = 0;
                        goto LABEL_34;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v589 = v26;
LABEL_34:
                        v27 = [v6 objectForKeyedSubscript:@"isMeme"];
                        v591 = self;
                        v585 = v27;
                        if (!v27 || (v28 = v27, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v583 = 0;
                          goto LABEL_37;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v583 = v28;
LABEL_37:
                          v29 = [v6 objectForKeyedSubscript:@"isScreenshot"];
                          v582 = v29;
                          if (!v29 || (v30 = v29, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v576 = 0;
                            goto LABEL_40;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v576 = v30;
LABEL_40:
                            v31 = [v6 objectForKeyedSubscript:@"isFavorite"];
                            v575 = v31;
                            if (!v31 || (v32 = v31, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v573 = 0;
                              goto LABEL_43;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v573 = v32;
LABEL_43:
                              v33 = [v6 objectForKeyedSubscript:@"isCapturedOnWeekend"];
                              v572 = v33;
                              if (!v33 || (v34 = v33, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v570 = 0;
                                goto LABEL_46;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v570 = v34;
LABEL_46:
                                v35 = [v6 objectForKeyedSubscript:@"isCapturedAtPrivateEvent"];
                                v569 = v35;
                                if (!v35 || (v36 = v35, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v567 = 0;
LABEL_49:
                                  v37 = [v6 objectForKeyedSubscript:@"isCapturedOnHoliday"];
                                  v566 = v37;
                                  if (v37 && (v38 = v37, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                  {
                                    objc_opt_class();
                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                    {
                                      if (!a4)
                                      {
                                        v564 = 0;
                                        v45 = 0;
                                        v56 = v611;
                                        a4 = v606;
LABEL_512:
                                        v112 = v588;
                                        goto LABEL_513;
                                      }

                                      v169 = a4;
                                      v565 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v170 = *MEMORY[0x1E698F240];
                                      v700 = *MEMORY[0x1E696A578];
                                      v171 = objc_alloc(MEMORY[0x1E696AEC0]);
                                      v453 = objc_opt_class();
                                      v172 = v171;
                                      self = v591;
                                      a4 = v606;
                                      v173 = [v172 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v453, @"isCapturedOnHoliday"];
                                      v701 = v173;
                                      v174 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v701 forKeys:&v700 count:1];
                                      v175 = v170;
                                      v11 = v612;
                                      v563 = v174;
                                      v176 = [v565 initWithDomain:v175 code:2 userInfo:?];
                                      v564 = 0;
                                      v45 = 0;
                                      *v169 = v176;
                                      v56 = v611;
                                      goto LABEL_511;
                                    }

                                    v564 = v38;
                                  }

                                  else
                                  {
                                    v564 = 0;
                                  }

                                  v39 = [v6 objectForKeyedSubscript:@"mediaType"];
                                  v563 = v39;
                                  if (!v39 || (v40 = v39, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v560 = 0;
                                    goto LABEL_140;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v147 = v40;
LABEL_139:
                                    v560 = v147;

LABEL_140:
                                    v178 = [v6 objectForKeyedSubscript:@"importSource"];
                                    v562 = v178;
                                    if (!v178 || (v179 = v178, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                    {
                                      v561 = 0;
                                      goto LABEL_148;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v180 = v179;
LABEL_147:
                                      v561 = v180;

LABEL_148:
                                      v182 = [v6 objectForKeyedSubscript:@"assetAge"];
                                      v559 = v182;
                                      if (!v182 || (v183 = v182, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v558 = 0;
                                        goto LABEL_157;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v184 = v183;
LABEL_156:
                                        v558 = v184;

LABEL_157:
                                        v186 = [v6 objectForKeyedSubscript:@"userLibrarySize"];
                                        v557 = v186;
                                        if (!v186 || (v187 = v186, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v556 = 0;
                                          goto LABEL_165;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v188 = v187;
LABEL_164:
                                          v556 = v188;

LABEL_165:
                                          v190 = [v6 objectForKeyedSubscript:@"userNumTrips"];
                                          v555 = v190;
                                          if (!v190 || (v191 = v190, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                          {
                                            v554 = 0;
                                            goto LABEL_168;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v554 = v191;
LABEL_168:
                                            v192 = [v6 objectForKeyedSubscript:@"userNumVIPPeople"];
                                            v553 = v192;
                                            if (!v192 || (v193 = v192, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                            {
                                              v551 = 0;
                                              goto LABEL_171;
                                            }

                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v551 = v193;
LABEL_171:
                                              v194 = [v6 objectForKeyedSubscript:@"userNumFavorites"];
                                              v550 = v194;
                                              if (!v194 || (v195 = v194, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                              {
                                                v547 = 0;
                                                goto LABEL_174;
                                              }

                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v547 = v195;
LABEL_174:
                                                v196 = [v6 objectForKeyedSubscript:@"userHasVIP"];
                                                v549 = v196;
                                                if (!v196 || (v197 = v196, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                {
                                                  v548 = 0;
                                                  goto LABEL_177;
                                                }

                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v548 = v197;
LABEL_177:
                                                  v198 = [v6 objectForKeyedSubscript:@"userHasHome"];
                                                  v546 = v198;
                                                  if (!v198 || (v199 = v198, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                  {
                                                    v544 = 0;
                                                    goto LABEL_180;
                                                  }

                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v544 = v199;
LABEL_180:
                                                    v200 = [v6 objectForKeyedSubscript:@"userHasPet"];
                                                    v543 = v200;
                                                    if (!v200 || (v201 = v200, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                    {
                                                      v540 = 0;
                                                      goto LABEL_183;
                                                    }

                                                    objc_opt_class();
                                                    if (objc_opt_isKindOfClass())
                                                    {
                                                      v540 = v201;
LABEL_183:
                                                      v202 = [v6 objectForKeyedSubscript:@"containsBaby"];
                                                      v542 = v202;
                                                      if (!v202 || (v203 = v202, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                      {
                                                        v541 = 0;
                                                        goto LABEL_186;
                                                      }

                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        v541 = v203;
LABEL_186:
                                                        v204 = [v6 objectForKeyedSubscript:@"containsSocialGroup"];
                                                        v539 = v204;
                                                        if (!v204 || (v205 = v204, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                        {
                                                          v538 = 0;
                                                          goto LABEL_189;
                                                        }

                                                        objc_opt_class();
                                                        if (objc_opt_isKindOfClass())
                                                        {
                                                          v538 = v205;
LABEL_189:
                                                          v206 = [v6 objectForKeyedSubscript:@"containsMyPet"];
                                                          v537 = v206;
                                                          if (!v206 || (v207 = v206, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                          {
                                                            v536 = 0;
                                                            goto LABEL_192;
                                                          }

                                                          objc_opt_class();
                                                          if (objc_opt_isKindOfClass())
                                                          {
                                                            v536 = v207;
LABEL_192:
                                                            v208 = [v6 objectForKeyedSubscript:@"containsCoWorker"];
                                                            v535 = v208;
                                                            if (!v208 || (v209 = v208, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                            {
                                                              v534 = 0;
                                                              goto LABEL_195;
                                                            }

                                                            objc_opt_class();
                                                            if (objc_opt_isKindOfClass())
                                                            {
                                                              v534 = v209;
LABEL_195:
                                                              v210 = [v6 objectForKeyedSubscript:@"containsFamily"];
                                                              if (!v210 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                              {
                                                                v529 = v210;
                                                                v532 = 0;
                                                                goto LABEL_198;
                                                              }

                                                              objc_opt_class();
                                                              if (objc_opt_isKindOfClass())
                                                              {
                                                                v529 = v210;
                                                                v532 = v210;
LABEL_198:
                                                                v211 = [v6 objectForKeyedSubscript:@"containsFriends"];
                                                                v531 = v211;
                                                                if (!v211 || (v212 = v211, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                {
                                                                  v530 = 0;
                                                                  goto LABEL_201;
                                                                }

                                                                objc_opt_class();
                                                                if (objc_opt_isKindOfClass())
                                                                {
                                                                  v530 = v212;
LABEL_201:
                                                                  v213 = [v6 objectForKeyedSubscript:@"containsPartner"];
                                                                  v528 = v213;
                                                                  if (!v213 || (v214 = v213, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                  {
                                                                    v525 = 0;
                                                                    goto LABEL_204;
                                                                  }

                                                                  objc_opt_class();
                                                                  if (objc_opt_isKindOfClass())
                                                                  {
                                                                    v525 = v214;
LABEL_204:
                                                                    v215 = [v6 objectForKeyedSubscript:@"containsParent"];
                                                                    v527 = v215;
                                                                    if (!v215 || (v216 = v215, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                    {
                                                                      v526 = 0;
                                                                      goto LABEL_207;
                                                                    }

                                                                    objc_opt_class();
                                                                    if (objc_opt_isKindOfClass())
                                                                    {
                                                                      v526 = v216;
LABEL_207:
                                                                      v217 = [v6 objectForKeyedSubscript:@"containsSibling"];
                                                                      v524 = v217;
                                                                      if (!v217 || (v218 = v217, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                      {
                                                                        v523 = 0;
                                                                        goto LABEL_210;
                                                                      }

                                                                      objc_opt_class();
                                                                      if (objc_opt_isKindOfClass())
                                                                      {
                                                                        v523 = v218;
LABEL_210:
                                                                        v219 = [v6 objectForKeyedSubscript:@"containsChild"];
                                                                        v522 = v219;
                                                                        if (!v219 || (v220 = v219, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                        {
                                                                          v521 = 0;
                                                                          goto LABEL_213;
                                                                        }

                                                                        objc_opt_class();
                                                                        if (objc_opt_isKindOfClass())
                                                                        {
                                                                          v521 = v220;
LABEL_213:
                                                                          v221 = [v6 objectForKeyedSubscript:@"isCoupon"];
                                                                          v519 = v221;
                                                                          if (!v221 || (v222 = v221, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                          {
                                                                            v520 = 0;
                                                                            goto LABEL_216;
                                                                          }

                                                                          objc_opt_class();
                                                                          if (objc_opt_isKindOfClass())
                                                                          {
                                                                            v520 = v222;
LABEL_216:
                                                                            v223 = [v6 objectForKeyedSubscript:@"isRecipe"];
                                                                            v517 = v223;
                                                                            if (!v223 || (v224 = v223, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                            {
                                                                              v518 = 0;
                                                                              goto LABEL_219;
                                                                            }

                                                                            objc_opt_class();
                                                                            if (objc_opt_isKindOfClass())
                                                                            {
                                                                              v518 = v224;
LABEL_219:
                                                                              v225 = [v6 objectForKeyedSubscript:@"isReceipt"];
                                                                              v516 = v225;
                                                                              if (!v225 || (v226 = v225, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                              {
                                                                                v515 = 0;
                                                                                goto LABEL_222;
                                                                              }

                                                                              objc_opt_class();
                                                                              if (objc_opt_isKindOfClass())
                                                                              {
                                                                                v515 = v226;
LABEL_222:
                                                                                v227 = [v6 objectForKeyedSubscript:@"isRecentView"];
                                                                                v514 = v227;
                                                                                if (!v227 || (v228 = v227, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                {
                                                                                  v510 = 0;
                                                                                  goto LABEL_225;
                                                                                }

                                                                                objc_opt_class();
                                                                                if (objc_opt_isKindOfClass())
                                                                                {
                                                                                  v510 = v228;
LABEL_225:
                                                                                  v229 = [v6 objectForKeyedSubscript:@"isRecentEdit"];
                                                                                  v512 = v229;
                                                                                  if (!v229 || (v230 = v229, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                  {
                                                                                    v511 = 0;
                                                                                    goto LABEL_228;
                                                                                  }

                                                                                  objc_opt_class();
                                                                                  if (objc_opt_isKindOfClass())
                                                                                  {
                                                                                    v511 = v230;
LABEL_228:
                                                                                    v231 = [v6 objectForKeyedSubscript:@"isRecentShare"];
                                                                                    v509 = v231;
                                                                                    if (!v231 || (v232 = v231, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                    {
                                                                                      v513 = 0;
                                                                                      goto LABEL_231;
                                                                                    }

                                                                                    objc_opt_class();
                                                                                    if (objc_opt_isKindOfClass())
                                                                                    {
                                                                                      v513 = v232;
LABEL_231:
                                                                                      v233 = [v6 objectForKeyedSubscript:@"isRecentFavorite"];
                                                                                      v506 = v233;
                                                                                      if (!v233 || (v234 = v233, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                      {
                                                                                        v507 = 0;
                                                                                        goto LABEL_234;
                                                                                      }

                                                                                      objc_opt_class();
                                                                                      if (objc_opt_isKindOfClass())
                                                                                      {
                                                                                        v507 = v234;
LABEL_234:
                                                                                        v235 = [v6 objectForKeyedSubscript:@"isContainedInSharedAlbum"];
                                                                                        v505 = v235;
                                                                                        if (!v235 || (v236 = v235, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                        {
                                                                                          v598 = 0;
                                                                                          goto LABEL_237;
                                                                                        }

                                                                                        objc_opt_class();
                                                                                        if (objc_opt_isKindOfClass())
                                                                                        {
                                                                                          v598 = v236;
LABEL_237:
                                                                                          v504 = [v6 objectForKeyedSubscript:@"isContainedInOnThisDay"];
                                                                                          if (!v504 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                          {
                                                                                            v502 = 0;
LABEL_240:
                                                                                            v237 = [v6 objectForKeyedSubscript:@"capturedAtAOI"];
                                                                                            v500 = v237;
                                                                                            if (!v237)
                                                                                            {
LABEL_378:
                                                                                              [v6 objectForKeyedSubscript:@"capturedAtPOI"];
                                                                                              v498 = v495 = v237;
                                                                                              if (v498 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                              {
                                                                                                objc_opt_class();
                                                                                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                {
                                                                                                  v403 = self;
                                                                                                  if (!a4)
                                                                                                  {
                                                                                                    v496 = 0;
                                                                                                    v45 = 0;
                                                                                                    v56 = v611;
                                                                                                    v318 = v529;
LABEL_480:
                                                                                                    v394 = v495;
                                                                                                    goto LABEL_481;
                                                                                                  }

                                                                                                  v404 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                  v497 = *MEMORY[0x1E698F240];
                                                                                                  v638 = *MEMORY[0x1E696A578];
                                                                                                  v493 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"capturedAtPOI"];
                                                                                                  v639 = v493;
                                                                                                  v492 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v639 forKeys:&v638 count:1];
                                                                                                  v405 = [v404 initWithDomain:v497 code:2 userInfo:?];
                                                                                                  v496 = 0;
                                                                                                  v45 = 0;
                                                                                                  *a4 = v405;
                                                                                                  goto LABEL_464;
                                                                                                }

                                                                                                v496 = v498;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v496 = 0;
                                                                                              }

                                                                                              v492 = [v6 objectForKeyedSubscript:@"capturedAtROI"];
                                                                                              if (!v492 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                              {
                                                                                                v493 = 0;
LABEL_384:
                                                                                                v488 = [v6 objectForKeyedSubscript:@"capturedAtBusiness"];
                                                                                                if (v488 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                {
                                                                                                  objc_opt_class();
                                                                                                  if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                  {
                                                                                                    if (!a4)
                                                                                                    {
                                                                                                      v490 = 0;
                                                                                                      v45 = 0;
                                                                                                      v56 = v611;
                                                                                                      v407 = v488;
                                                                                                      goto LABEL_478;
                                                                                                    }

                                                                                                    v409 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                    v491 = *MEMORY[0x1E698F240];
                                                                                                    v634 = *MEMORY[0x1E696A578];
                                                                                                    v407 = v488;
                                                                                                    v486 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"capturedAtBusiness"];
                                                                                                    v635 = v486;
                                                                                                    v487 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v635 forKeys:&v634 count:1];
                                                                                                    v410 = [v409 initWithDomain:v491 code:2 userInfo:?];
                                                                                                    v490 = 0;
                                                                                                    v45 = 0;
                                                                                                    *a4 = v410;
                                                                                                    v11 = v612;
                                                                                                    v56 = v611;
                                                                                                    v411 = v606;
                                                                                                    goto LABEL_477;
                                                                                                  }

                                                                                                  v490 = v488;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v490 = 0;
                                                                                                }

                                                                                                v487 = [v6 objectForKeyedSubscript:@"isCapturedAtPublicEvent"];
                                                                                                if (v487 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                {
                                                                                                  objc_opt_class();
                                                                                                  if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                  {
                                                                                                    if (!a4)
                                                                                                    {
                                                                                                      v486 = 0;
                                                                                                      v45 = 0;
                                                                                                      v56 = v611;
                                                                                                      v411 = v606;
                                                                                                      v407 = v488;
                                                                                                      goto LABEL_477;
                                                                                                    }

                                                                                                    v412 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                    v413 = *MEMORY[0x1E698F240];
                                                                                                    v632 = *MEMORY[0x1E696A578];
                                                                                                    v485 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isCapturedAtPublicEvent"];
                                                                                                    v633 = v485;
                                                                                                    v484 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v633 forKeys:&v632 count:1];
                                                                                                    v486 = 0;
                                                                                                    v45 = 0;
                                                                                                    *a4 = [v412 initWithDomain:v413 code:2 userInfo:?];
                                                                                                    goto LABEL_538;
                                                                                                  }

                                                                                                  v486 = v487;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v486 = 0;
                                                                                                }

                                                                                                v484 = [v6 objectForKeyedSubscript:@"isContainedInVisualTrend"];
                                                                                                if (!v484 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                                {
                                                                                                  v485 = 0;
                                                                                                  goto LABEL_393;
                                                                                                }

                                                                                                v402 = self;
                                                                                                objc_opt_class();
                                                                                                if (objc_opt_isKindOfClass())
                                                                                                {
                                                                                                  v485 = v484;
LABEL_393:
                                                                                                  v483 = [v6 objectForKeyedSubscript:@"isContainedInActivity"];
                                                                                                  if (!v483 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                                  {
                                                                                                    v482 = 0;
                                                                                                    v383 = v618;
                                                                                                    goto LABEL_396;
                                                                                                  }

                                                                                                  v383 = v618;
                                                                                                  v402 = self;
                                                                                                  objc_opt_class();
                                                                                                  if (objc_opt_isKindOfClass())
                                                                                                  {
                                                                                                    v482 = v483;
LABEL_396:
                                                                                                    v587 = v8;
                                                                                                    [v6 objectForKeyedSubscript:@"isContainedInChildActivity"];
                                                                                                    v595 = v7;
                                                                                                    v581 = v10;
                                                                                                    v479 = v618 = v383;
                                                                                                    if (v479)
                                                                                                    {
                                                                                                      v384 = v621;
                                                                                                      objc_opt_class();
                                                                                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                      {
                                                                                                        objc_opt_class();
                                                                                                        if (objc_opt_isKindOfClass())
                                                                                                        {
                                                                                                          v481 = v479;
                                                                                                          goto LABEL_435;
                                                                                                        }

                                                                                                        if (a4)
                                                                                                        {
                                                                                                          v420 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                          v421 = *MEMORY[0x1E698F240];
                                                                                                          v626 = *MEMORY[0x1E696A578];
                                                                                                          v480 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isContainedInChildActivity"];
                                                                                                          v627 = v480;
                                                                                                          v406 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v627 forKeys:&v626 count:1];
                                                                                                          v481 = 0;
                                                                                                          v45 = 0;
                                                                                                          *a4 = [v420 initWithDomain:v421 code:2 userInfo:v406];
                                                                                                          goto LABEL_547;
                                                                                                        }

                                                                                                        v481 = 0;
                                                                                                        v45 = 0;
                                                                                                        v7 = v595;
LABEL_545:
                                                                                                        v11 = v612;
                                                                                                        v56 = v611;
                                                                                                        v411 = v606;
                                                                                                        v407 = v488;
                                                                                                        goto LABEL_474;
                                                                                                      }
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v384 = v621;
                                                                                                    }

                                                                                                    v481 = 0;
LABEL_435:
                                                                                                    v406 = [v6 objectForKeyedSubscript:@"userLibraryAgeInDays"];
                                                                                                    v621 = v384;
                                                                                                    if (!v406 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                                    {
                                                                                                      v480 = 0;
                                                                                                      goto LABEL_468;
                                                                                                    }

                                                                                                    objc_opt_class();
                                                                                                    if (objc_opt_isKindOfClass())
                                                                                                    {
                                                                                                      v480 = v406;
LABEL_467:

LABEL_468:
                                                                                                      v423 = [v6 objectForKeyedSubscript:@"userisDAU"];
                                                                                                      if (!v423 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                                      {
                                                                                                        v424 = v423;
                                                                                                        v425 = 0;
LABEL_471:
                                                                                                        v426 = [v560 intValue];
                                                                                                        v427 = [v561 intValue];
                                                                                                        v428 = [v558 intValue];
                                                                                                        v429 = [v556 intValue];
                                                                                                        v430 = v425;
                                                                                                        LODWORD(v478) = [v480 intValue];
                                                                                                        v477 = __PAIR64__(v429, v428);
                                                                                                        v476 = __PAIR64__(v427, v426);
                                                                                                        v11 = v612;
                                                                                                        v411 = v606;
                                                                                                        self = [BMPhotosUserAnalytics initWithIdentifier:v591 userEvent:"initWithIdentifier:userEvent:containsVIP:faceCount:containsPets:capturedAtHome:capturedAtWork:capturedAtFrequentLocation:capturedOnTrip:capturedOnShortTrip:isDocument:isMeme:isScreenshot:isFavorite:isCapturedOnWeekend:isCapturedAtPrivateEvent:isCapturedOnHoliday:mediaType:importSource:assetAge:userLibrarySize:userNumTrips:userNumVIPPeople:userNumFavorites:userHasVIP:userHasHome:userHasPet:containsBaby:containsSocialGroup:containsMyPet:containsCoWorker:containsFamily:containsFriends:containsPartner:containsParent:containsSibling:containsChild:isCoupon:isRecipe:isReceipt:isRecentView:isRecentEdit:isRecentShare:isRecentFavorite:isContainedInSharedAlbum:isContainedInOnThisDay:capturedAtAOI:capturedAtPOI:capturedAtROI:capturedAtBusiness:isCapturedAtPublicEvent:isContainedInVisualTrend:isContainedInActivity:isContainedInChildActivity:userLibraryAgeInDays:userisDAU:" containsVIP:v384 faceCount:v618 containsPets:v612 capturedAtHome:v619 capturedAtWork:v613 capturedAtFrequentLocation:v606 capturedOnTrip:v607 capturedOnShortTrip:v603 isDocument:v600 isMeme:v588 isScreenshot:v589 isFavorite:v583 isCapturedOnWeekend:v576 isCapturedAtPrivateEvent:v573 isCapturedOnHoliday:v570 mediaType:v567 importSource:v564 assetAge:v476 userLibrarySize:v477 userNumTrips:v554 userNumVIPPeople:v551 userNumFavorites:v547 userHasVIP:v548 userHasHome:v544 userHasPet:v540 containsBaby:v541 containsSocialGroup:v538 containsMyPet:v536 containsCoWorker:v534 containsFamily:v532 containsFriends:v530 containsPartner:v525 containsParent:v526 containsSibling:v523 containsChild:v521 isCoupon:v520 isRecipe:v518 isReceipt:v515 isRecentView:v510 isRecentEdit:v511 isRecentShare:v513 isRecentFavorite:v507 isContainedInSharedAlbum:v598 isContainedInOnThisDay:v502 capturedAtAOI:v495 capturedAtPOI:v496 capturedAtROI:v493 capturedAtBusiness:v490 isCapturedAtPublicEvent:v486 isContainedInVisualTrend:v485 isContainedInActivity:v482 isContainedInChildActivity:v481 userLibraryAgeInDays:v478 userisDAU:v425];
                                                                                                        v45 = self;
                                                                                                        v7 = v595;
LABEL_472:

                                                                                                        v10 = v581;
                                                                                                        v56 = v611;
LABEL_473:
                                                                                                        v407 = v488;

                                                                                                        v8 = v587;
LABEL_474:

LABEL_475:
LABEL_476:

LABEL_477:
                                                                                                        v606 = v411;

                                                                                                        goto LABEL_478;
                                                                                                      }

                                                                                                      objc_opt_class();
                                                                                                      v424 = v423;
                                                                                                      if (objc_opt_isKindOfClass())
                                                                                                      {
                                                                                                        v425 = v423;
                                                                                                        goto LABEL_471;
                                                                                                      }

                                                                                                      if (a4)
                                                                                                      {
                                                                                                        v433 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                        v434 = *MEMORY[0x1E698F240];
                                                                                                        v622 = *MEMORY[0x1E696A578];
                                                                                                        v435 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"userisDAU"];
                                                                                                        v623 = v435;
                                                                                                        v436 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v623 forKeys:&v622 count:1];
                                                                                                        *a4 = [v433 initWithDomain:v434 code:2 userInfo:v436];
                                                                                                      }

                                                                                                      v430 = 0;
                                                                                                      v45 = 0;
LABEL_543:
                                                                                                      self = v591;
                                                                                                      v7 = v595;
                                                                                                      v11 = v612;
                                                                                                      v411 = v606;
                                                                                                      goto LABEL_472;
                                                                                                    }

                                                                                                    objc_opt_class();
                                                                                                    if (objc_opt_isKindOfClass())
                                                                                                    {
                                                                                                      v422 = v406;
                                                                                                      v480 = [MEMORY[0x1E696AD98] numberWithInt:BMPhotosUserAnalyticsUserLibraryAgeInDaysTypeFromString(v422)];

                                                                                                      goto LABEL_467;
                                                                                                    }

                                                                                                    if (a4)
                                                                                                    {
                                                                                                      v437 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                      v438 = *MEMORY[0x1E698F240];
                                                                                                      v624 = *MEMORY[0x1E696A578];
                                                                                                      v430 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"userLibraryAgeInDays"];
                                                                                                      v625 = v430;
                                                                                                      v424 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v625 forKeys:&v624 count:1];
                                                                                                      v480 = 0;
                                                                                                      v45 = 0;
                                                                                                      *a4 = [v437 initWithDomain:v438 code:2 userInfo:?];
                                                                                                      goto LABEL_543;
                                                                                                    }

                                                                                                    v480 = 0;
                                                                                                    v45 = 0;
LABEL_547:
                                                                                                    v7 = v595;
                                                                                                    v11 = v612;
                                                                                                    v56 = v611;
                                                                                                    v411 = v606;
                                                                                                    goto LABEL_473;
                                                                                                  }

                                                                                                  if (a4)
                                                                                                  {
                                                                                                    v417 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                    v418 = *MEMORY[0x1E698F240];
                                                                                                    v628 = *MEMORY[0x1E696A578];
                                                                                                    v481 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isContainedInActivity"];
                                                                                                    v629 = v481;
                                                                                                    v479 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v629 forKeys:&v628 count:1];
                                                                                                    v419 = [v417 initWithDomain:v418 code:2 userInfo:?];
                                                                                                    v482 = 0;
                                                                                                    v45 = 0;
                                                                                                    *a4 = v419;
                                                                                                    goto LABEL_545;
                                                                                                  }

                                                                                                  v482 = 0;
                                                                                                  v45 = 0;
LABEL_540:
                                                                                                  self = v402;
                                                                                                  v11 = v612;
                                                                                                  v56 = v611;
                                                                                                  v411 = v606;
                                                                                                  v407 = v488;
                                                                                                  goto LABEL_475;
                                                                                                }

                                                                                                if (a4)
                                                                                                {
                                                                                                  v414 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                  v415 = *MEMORY[0x1E698F240];
                                                                                                  v630 = *MEMORY[0x1E696A578];
                                                                                                  v482 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isContainedInVisualTrend"];
                                                                                                  v631 = v482;
                                                                                                  v483 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v631 forKeys:&v630 count:1];
                                                                                                  v416 = [v414 initWithDomain:v415 code:2 userInfo:?];
                                                                                                  v485 = 0;
                                                                                                  v45 = 0;
                                                                                                  *a4 = v416;
                                                                                                  goto LABEL_540;
                                                                                                }

                                                                                                v485 = 0;
                                                                                                v45 = 0;
LABEL_538:
                                                                                                v11 = v612;
                                                                                                v56 = v611;
                                                                                                v411 = v606;
                                                                                                v407 = v488;
                                                                                                goto LABEL_476;
                                                                                              }

                                                                                              objc_opt_class();
                                                                                              if (objc_opt_isKindOfClass())
                                                                                              {
                                                                                                v493 = v492;
                                                                                                goto LABEL_384;
                                                                                              }

                                                                                              v403 = self;
                                                                                              if (a4)
                                                                                              {
                                                                                                v494 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                v489 = *MEMORY[0x1E698F240];
                                                                                                v636 = *MEMORY[0x1E696A578];
                                                                                                v490 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"capturedAtROI"];
                                                                                                v637 = v490;
                                                                                                v407 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v637 forKeys:&v636 count:1];
                                                                                                v408 = [v494 initWithDomain:v489 code:2 userInfo:v407];
                                                                                                v493 = 0;
                                                                                                v45 = 0;
                                                                                                *a4 = v408;
                                                                                                v56 = v611;
LABEL_478:

                                                                                                goto LABEL_479;
                                                                                              }

                                                                                              v493 = 0;
                                                                                              v45 = 0;
LABEL_464:
                                                                                              self = v403;
                                                                                              v56 = v611;
LABEL_479:
                                                                                              v318 = v529;

                                                                                              goto LABEL_480;
                                                                                            }

                                                                                            objc_opt_class();
                                                                                            if (objc_opt_isKindOfClass())
                                                                                            {
                                                                                              v237 = 0;
                                                                                              goto LABEL_378;
                                                                                            }

                                                                                            objc_opt_class();
                                                                                            if (objc_opt_isKindOfClass())
                                                                                            {
                                                                                              v237 = v237;
                                                                                              goto LABEL_378;
                                                                                            }

                                                                                            v389 = self;
                                                                                            if (a4)
                                                                                            {
                                                                                              v398 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                              v499 = *MEMORY[0x1E698F240];
                                                                                              v640 = *MEMORY[0x1E696A578];
                                                                                              v496 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"capturedAtAOI"];
                                                                                              v641 = v496;
                                                                                              v399 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v641 forKeys:&v640 count:1];
                                                                                              v400 = v499;
                                                                                              v498 = v399;
                                                                                              v401 = [v398 initWithDomain:v400 code:2 userInfo:?];
                                                                                              v394 = 0;
                                                                                              v45 = 0;
                                                                                              *a4 = v401;
                                                                                              v56 = v611;
                                                                                              v318 = v529;
LABEL_481:

                                                                                              goto LABEL_482;
                                                                                            }

                                                                                            v394 = 0;
                                                                                            v45 = 0;
LABEL_457:
                                                                                            self = v389;
                                                                                            v56 = v611;
                                                                                            v318 = v529;
LABEL_482:

                                                                                            goto LABEL_483;
                                                                                          }

                                                                                          objc_opt_class();
                                                                                          if (objc_opt_isKindOfClass())
                                                                                          {
                                                                                            v502 = v504;
                                                                                            goto LABEL_240;
                                                                                          }

                                                                                          v389 = self;
                                                                                          if (a4)
                                                                                          {
                                                                                            v503 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                            v501 = *MEMORY[0x1E698F240];
                                                                                            v642 = *MEMORY[0x1E696A578];
                                                                                            v394 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isContainedInOnThisDay"];
                                                                                            v643 = v394;
                                                                                            v395 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v643 forKeys:&v642 count:1];
                                                                                            v396 = v501;
                                                                                            v500 = v395;
                                                                                            v397 = [v503 initWithDomain:v396 code:2 userInfo:?];
                                                                                            v502 = 0;
                                                                                            v45 = 0;
                                                                                            *a4 = v397;
                                                                                            goto LABEL_457;
                                                                                          }

                                                                                          v502 = 0;
                                                                                          v45 = 0;
LABEL_453:
                                                                                          self = v389;
                                                                                          v56 = v611;
                                                                                          v318 = v529;
LABEL_483:
                                                                                          v371 = v510;

                                                                                          goto LABEL_484;
                                                                                        }

                                                                                        v389 = self;
                                                                                        if (a4)
                                                                                        {
                                                                                          v392 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                          v599 = *MEMORY[0x1E698F240];
                                                                                          v644 = *MEMORY[0x1E696A578];
                                                                                          v502 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isContainedInSharedAlbum"];
                                                                                          v645 = v502;
                                                                                          v504 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v645 forKeys:&v644 count:1];
                                                                                          v393 = [v392 initWithDomain:v599 code:2 userInfo:?];
                                                                                          v598 = 0;
                                                                                          v45 = 0;
                                                                                          *a4 = v393;
                                                                                          goto LABEL_453;
                                                                                        }

                                                                                        v598 = 0;
                                                                                        v45 = 0;
LABEL_447:
                                                                                        self = v389;
                                                                                        v56 = v611;
                                                                                        v318 = v529;
                                                                                        v371 = v510;
LABEL_484:

                                                                                        goto LABEL_485;
                                                                                      }

                                                                                      v389 = self;
                                                                                      if (a4)
                                                                                      {
                                                                                        v390 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                        v508 = *MEMORY[0x1E698F240];
                                                                                        v646 = *MEMORY[0x1E696A578];
                                                                                        v598 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isRecentFavorite"];
                                                                                        v647 = v598;
                                                                                        v505 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v647 forKeys:&v646 count:1];
                                                                                        v391 = [v390 initWithDomain:v508 code:2 userInfo:?];
                                                                                        v507 = 0;
                                                                                        v45 = 0;
                                                                                        *a4 = v391;
                                                                                        goto LABEL_447;
                                                                                      }

                                                                                      v507 = 0;
                                                                                      v45 = 0;
LABEL_443:
                                                                                      v56 = v611;
                                                                                      v318 = v529;
                                                                                      v371 = v510;
LABEL_485:

                                                                                      goto LABEL_486;
                                                                                    }

                                                                                    if (a4)
                                                                                    {
                                                                                      v385 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                      v386 = *MEMORY[0x1E698F240];
                                                                                      v648 = *MEMORY[0x1E696A578];
                                                                                      v387 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                                      v475 = objc_opt_class();
                                                                                      v388 = v387;
                                                                                      self = v591;
                                                                                      v507 = [v388 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v475, @"isRecentShare"];
                                                                                      v649 = v507;
                                                                                      v506 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v649 forKeys:&v648 count:1];
                                                                                      v513 = 0;
                                                                                      v45 = 0;
                                                                                      *a4 = [v385 initWithDomain:v386 code:2 userInfo:?];
                                                                                      goto LABEL_443;
                                                                                    }

                                                                                    v513 = 0;
                                                                                    v45 = 0;
LABEL_432:
                                                                                    v56 = v611;
                                                                                    v318 = v529;
                                                                                    v371 = v510;
LABEL_486:

                                                                                    goto LABEL_487;
                                                                                  }

                                                                                  if (a4)
                                                                                  {
                                                                                    v379 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                    v380 = *MEMORY[0x1E698F240];
                                                                                    v650 = *MEMORY[0x1E696A578];
                                                                                    v381 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                                    v474 = objc_opt_class();
                                                                                    v382 = v381;
                                                                                    self = v591;
                                                                                    v513 = [v382 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v474, @"isRecentEdit"];
                                                                                    v651 = v513;
                                                                                    v509 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v651 forKeys:&v650 count:1];
                                                                                    v511 = 0;
                                                                                    v45 = 0;
                                                                                    *a4 = [v379 initWithDomain:v380 code:2 userInfo:?];
                                                                                    goto LABEL_432;
                                                                                  }

                                                                                  v511 = 0;
                                                                                  v45 = 0;
                                                                                  v56 = v611;
                                                                                  v318 = v529;
                                                                                  v371 = v510;
LABEL_487:

                                                                                  goto LABEL_488;
                                                                                }

                                                                                if (a4)
                                                                                {
                                                                                  v374 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                  v375 = *MEMORY[0x1E698F240];
                                                                                  v652 = *MEMORY[0x1E696A578];
                                                                                  v376 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                                  v473 = objc_opt_class();
                                                                                  v377 = v376;
                                                                                  self = v591;
                                                                                  v511 = [v377 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v473, @"isRecentView"];
                                                                                  v653 = v511;
                                                                                  v512 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v653 forKeys:&v652 count:1];
                                                                                  v378 = [v374 initWithDomain:v375 code:2 userInfo:?];
                                                                                  v371 = 0;
                                                                                  v45 = 0;
                                                                                  *a4 = v378;
                                                                                  v56 = v611;
                                                                                  v318 = v529;
                                                                                  goto LABEL_487;
                                                                                }

                                                                                v371 = 0;
                                                                                v45 = 0;
LABEL_421:
                                                                                v56 = v611;
                                                                                v318 = v529;
LABEL_488:

                                                                                goto LABEL_489;
                                                                              }

                                                                              if (a4)
                                                                              {
                                                                                v367 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                v368 = *MEMORY[0x1E698F240];
                                                                                v654 = *MEMORY[0x1E696A578];
                                                                                v369 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                                v472 = objc_opt_class();
                                                                                v370 = v369;
                                                                                self = v591;
                                                                                v371 = [v370 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v472, @"isReceipt"];
                                                                                v655 = v371;
                                                                                v372 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v655 forKeys:&v654 count:1];
                                                                                v373 = v368;
                                                                                v11 = v612;
                                                                                v514 = v372;
                                                                                v515 = 0;
                                                                                v45 = 0;
                                                                                *a4 = [v367 initWithDomain:v373 code:2 userInfo:?];
                                                                                goto LABEL_421;
                                                                              }

                                                                              v515 = 0;
                                                                              v45 = 0;
LABEL_415:
                                                                              v56 = v611;
                                                                              v318 = v529;
LABEL_489:
                                                                              v331 = v525;

                                                                              v362 = v517;
                                                                              goto LABEL_490;
                                                                            }

                                                                            if (a4)
                                                                            {
                                                                              v363 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                              v364 = *MEMORY[0x1E698F240];
                                                                              v656 = *MEMORY[0x1E696A578];
                                                                              v365 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                              v471 = objc_opt_class();
                                                                              v366 = v365;
                                                                              self = v591;
                                                                              v515 = [v366 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v471, @"isRecipe"];
                                                                              v657 = v515;
                                                                              v516 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v657 forKeys:&v656 count:1];
                                                                              v518 = 0;
                                                                              v45 = 0;
                                                                              *a4 = [v363 initWithDomain:v364 code:2 userInfo:?];
                                                                              goto LABEL_415;
                                                                            }

                                                                            v518 = 0;
                                                                            v45 = 0;
                                                                            v56 = v611;
                                                                            v318 = v529;
                                                                            v362 = v517;
LABEL_409:
                                                                            v331 = v525;
LABEL_490:

                                                                            v354 = v519;
                                                                            goto LABEL_491;
                                                                          }

                                                                          if (a4)
                                                                          {
                                                                            v355 = a4;
                                                                            v356 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                            v357 = *MEMORY[0x1E698F240];
                                                                            v658 = *MEMORY[0x1E696A578];
                                                                            v358 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                            v470 = objc_opt_class();
                                                                            v359 = v358;
                                                                            self = v591;
                                                                            v518 = [v359 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v470, @"isCoupon"];
                                                                            v659 = v518;
                                                                            v360 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v659 forKeys:&v658 count:1];
                                                                            v361 = v357;
                                                                            v11 = v612;
                                                                            v520 = 0;
                                                                            v45 = 0;
                                                                            *v355 = [v356 initWithDomain:v361 code:2 userInfo:v360];
                                                                            v362 = v360;
                                                                            v56 = v611;
                                                                            v318 = v529;
                                                                            goto LABEL_409;
                                                                          }

                                                                          v520 = 0;
                                                                          v45 = 0;
                                                                          v56 = v611;
                                                                          v318 = v529;
                                                                          v354 = v519;
LABEL_403:
                                                                          v331 = v525;
LABEL_491:

                                                                          goto LABEL_492;
                                                                        }

                                                                        if (a4)
                                                                        {
                                                                          v347 = a4;
                                                                          v348 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                          v349 = *MEMORY[0x1E698F240];
                                                                          v660 = *MEMORY[0x1E696A578];
                                                                          v350 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                          v469 = objc_opt_class();
                                                                          v351 = v350;
                                                                          self = v591;
                                                                          v520 = [v351 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v469, @"containsChild"];
                                                                          v661 = v520;
                                                                          v352 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v661 forKeys:&v660 count:1];
                                                                          v353 = v349;
                                                                          v11 = v612;
                                                                          v521 = 0;
                                                                          v45 = 0;
                                                                          *v347 = [v348 initWithDomain:v353 code:2 userInfo:v352];
                                                                          v354 = v352;
                                                                          v56 = v611;
                                                                          v318 = v529;
                                                                          goto LABEL_403;
                                                                        }

                                                                        v521 = 0;
                                                                        v45 = 0;
LABEL_375:
                                                                        v56 = v611;
                                                                        v318 = v529;
                                                                        v331 = v525;
LABEL_492:

                                                                        goto LABEL_493;
                                                                      }

                                                                      if (a4)
                                                                      {
                                                                        v343 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                        v344 = *MEMORY[0x1E698F240];
                                                                        v662 = *MEMORY[0x1E696A578];
                                                                        v345 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                        v468 = objc_opt_class();
                                                                        v346 = v345;
                                                                        self = v591;
                                                                        v521 = [v346 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v468, @"containsSibling"];
                                                                        v663 = v521;
                                                                        v522 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v663 forKeys:&v662 count:1];
                                                                        v523 = 0;
                                                                        v45 = 0;
                                                                        *a4 = [v343 initWithDomain:v344 code:2 userInfo:?];
                                                                        goto LABEL_375;
                                                                      }

                                                                      v523 = 0;
                                                                      v45 = 0;
LABEL_369:
                                                                      v56 = v611;
                                                                      v318 = v529;
                                                                      v331 = v525;
LABEL_493:

                                                                      goto LABEL_494;
                                                                    }

                                                                    if (a4)
                                                                    {
                                                                      v339 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                      v340 = *MEMORY[0x1E698F240];
                                                                      v664 = *MEMORY[0x1E696A578];
                                                                      v341 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                      v467 = objc_opt_class();
                                                                      v342 = v341;
                                                                      self = v591;
                                                                      v523 = [v342 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v467, @"containsParent"];
                                                                      v665 = v523;
                                                                      v524 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v665 forKeys:&v664 count:1];
                                                                      v526 = 0;
                                                                      v45 = 0;
                                                                      *a4 = [v339 initWithDomain:v340 code:2 userInfo:?];
                                                                      goto LABEL_369;
                                                                    }

                                                                    v526 = 0;
                                                                    v45 = 0;
                                                                    v56 = v611;
                                                                    v318 = v529;
                                                                    v331 = v525;
LABEL_494:

                                                                    goto LABEL_495;
                                                                  }

                                                                  if (a4)
                                                                  {
                                                                    v334 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                    v335 = *MEMORY[0x1E698F240];
                                                                    v666 = *MEMORY[0x1E696A578];
                                                                    v336 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                    v466 = objc_opt_class();
                                                                    v337 = v336;
                                                                    self = v591;
                                                                    v526 = [v337 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v466, @"containsPartner"];
                                                                    v667 = v526;
                                                                    v527 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v667 forKeys:&v666 count:1];
                                                                    v338 = [v334 initWithDomain:v335 code:2 userInfo:?];
                                                                    v331 = 0;
                                                                    v45 = 0;
                                                                    *a4 = v338;
                                                                    v56 = v611;
                                                                    v318 = v529;
                                                                    goto LABEL_494;
                                                                  }

                                                                  v331 = 0;
                                                                  v45 = 0;
LABEL_358:
                                                                  v56 = v611;
                                                                  v318 = v529;
LABEL_495:

                                                                  goto LABEL_496;
                                                                }

                                                                if (a4)
                                                                {
                                                                  v327 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                  v328 = *MEMORY[0x1E698F240];
                                                                  v668 = *MEMORY[0x1E696A578];
                                                                  v329 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                  v465 = objc_opt_class();
                                                                  v330 = v329;
                                                                  self = v591;
                                                                  v331 = [v330 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v465, @"containsFriends"];
                                                                  v669 = v331;
                                                                  v332 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v669 forKeys:&v668 count:1];
                                                                  v333 = v328;
                                                                  v11 = v612;
                                                                  v528 = v332;
                                                                  v530 = 0;
                                                                  v45 = 0;
                                                                  *a4 = [v327 initWithDomain:v333 code:2 userInfo:?];
                                                                  goto LABEL_358;
                                                                }

                                                                v530 = 0;
                                                                v45 = 0;
                                                                v56 = v611;
                                                                v318 = v529;
LABEL_496:

                                                                goto LABEL_497;
                                                              }

                                                              if (a4)
                                                              {
                                                                v320 = a4;
                                                                v533 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                v321 = *MEMORY[0x1E698F240];
                                                                v670 = *MEMORY[0x1E696A578];
                                                                v322 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                v318 = v210;
                                                                v464 = objc_opt_class();
                                                                v323 = v322;
                                                                self = v591;
                                                                v530 = [v323 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v464, @"containsFamily"];
                                                                v671 = v530;
                                                                v324 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v671 forKeys:&v670 count:1];
                                                                v325 = v321;
                                                                v11 = v612;
                                                                v531 = v324;
                                                                v326 = [v533 initWithDomain:v325 code:2 userInfo:?];
                                                                v532 = 0;
                                                                v45 = 0;
                                                                *v320 = v326;
                                                                v56 = v611;
                                                                goto LABEL_496;
                                                              }

                                                              v532 = 0;
                                                              v45 = 0;
                                                              v56 = v611;
                                                              v318 = v210;
LABEL_497:
                                                              v280 = v540;

                                                              a4 = v606;
                                                              goto LABEL_498;
                                                            }

                                                            if (a4)
                                                            {
                                                              v313 = a4;
                                                              v314 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                              v315 = *MEMORY[0x1E698F240];
                                                              v672 = *MEMORY[0x1E696A578];
                                                              v316 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                              v463 = objc_opt_class();
                                                              v317 = v316;
                                                              self = v591;
                                                              v532 = [v317 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v463, @"containsCoWorker"];
                                                              v673 = v532;
                                                              v318 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v673 forKeys:&v672 count:1];
                                                              v319 = v315;
                                                              v11 = v612;
                                                              v534 = 0;
                                                              v45 = 0;
                                                              *v313 = [v314 initWithDomain:v319 code:2 userInfo:v318];
                                                              v56 = v611;
                                                              goto LABEL_497;
                                                            }

                                                            v534 = 0;
                                                            v45 = 0;
                                                            v56 = v611;
                                                            a4 = v606;
LABEL_342:
                                                            v280 = v540;
LABEL_498:

                                                            goto LABEL_499;
                                                          }

                                                          if (a4)
                                                          {
                                                            v306 = a4;
                                                            v307 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                            v308 = *MEMORY[0x1E698F240];
                                                            v674 = *MEMORY[0x1E696A578];
                                                            v309 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                            v462 = objc_opt_class();
                                                            v310 = v309;
                                                            self = v591;
                                                            a4 = v606;
                                                            v534 = [v310 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v462, @"containsMyPet"];
                                                            v675 = v534;
                                                            v311 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v675 forKeys:&v674 count:1];
                                                            v312 = v308;
                                                            v11 = v612;
                                                            v535 = v311;
                                                            v536 = 0;
                                                            v45 = 0;
                                                            *v306 = [v307 initWithDomain:v312 code:2 userInfo:?];
                                                            v56 = v611;
                                                            goto LABEL_342;
                                                          }

                                                          v536 = 0;
                                                          v45 = 0;
                                                          v56 = v611;
                                                          a4 = v606;
LABEL_336:
                                                          v280 = v540;
LABEL_499:

                                                          goto LABEL_500;
                                                        }

                                                        if (a4)
                                                        {
                                                          v299 = a4;
                                                          v300 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                          v301 = *MEMORY[0x1E698F240];
                                                          v676 = *MEMORY[0x1E696A578];
                                                          v302 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                          v461 = objc_opt_class();
                                                          v303 = v302;
                                                          self = v591;
                                                          a4 = v606;
                                                          v536 = [v303 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v461, @"containsSocialGroup"];
                                                          v677 = v536;
                                                          v304 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v677 forKeys:&v676 count:1];
                                                          v305 = v301;
                                                          v11 = v612;
                                                          v537 = v304;
                                                          v538 = 0;
                                                          v45 = 0;
                                                          *v299 = [v300 initWithDomain:v305 code:2 userInfo:?];
                                                          v56 = v611;
                                                          goto LABEL_336;
                                                        }

                                                        v538 = 0;
                                                        v45 = 0;
                                                        v56 = v611;
                                                        a4 = v606;
LABEL_330:
                                                        v280 = v540;
LABEL_500:

                                                        goto LABEL_501;
                                                      }

                                                      if (a4)
                                                      {
                                                        v292 = a4;
                                                        v293 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                        v294 = *MEMORY[0x1E698F240];
                                                        v678 = *MEMORY[0x1E696A578];
                                                        v295 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                        v460 = objc_opt_class();
                                                        v296 = v295;
                                                        self = v591;
                                                        a4 = v606;
                                                        v538 = [v296 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v460, @"containsBaby"];
                                                        v679 = v538;
                                                        v297 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v679 forKeys:&v678 count:1];
                                                        v298 = v294;
                                                        v11 = v612;
                                                        v539 = v297;
                                                        v541 = 0;
                                                        v45 = 0;
                                                        *v292 = [v293 initWithDomain:v298 code:2 userInfo:?];
                                                        v56 = v611;
                                                        goto LABEL_330;
                                                      }

                                                      v541 = 0;
                                                      v45 = 0;
                                                      v56 = v611;
                                                      a4 = v606;
                                                      v280 = v540;
LABEL_501:

                                                      goto LABEL_502;
                                                    }

                                                    if (a4)
                                                    {
                                                      v284 = a4;
                                                      v285 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                      v286 = *MEMORY[0x1E698F240];
                                                      v680 = *MEMORY[0x1E696A578];
                                                      v287 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                      v459 = objc_opt_class();
                                                      v288 = v287;
                                                      self = v591;
                                                      a4 = v606;
                                                      v541 = [v288 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v459, @"userHasPet"];
                                                      v681 = v541;
                                                      v289 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v681 forKeys:&v680 count:1];
                                                      v290 = v286;
                                                      v11 = v612;
                                                      v542 = v289;
                                                      v291 = [v285 initWithDomain:v290 code:2 userInfo:?];
                                                      v280 = 0;
                                                      v45 = 0;
                                                      *v284 = v291;
                                                      v56 = v611;
                                                      goto LABEL_501;
                                                    }

                                                    v280 = 0;
                                                    v45 = 0;
                                                    v56 = v611;
                                                    a4 = v606;
LABEL_502:

                                                    goto LABEL_503;
                                                  }

                                                  if (a4)
                                                  {
                                                    v276 = a4;
                                                    v545 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                    v277 = *MEMORY[0x1E698F240];
                                                    v682 = *MEMORY[0x1E696A578];
                                                    v278 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                    v458 = objc_opt_class();
                                                    v279 = v278;
                                                    self = v591;
                                                    a4 = v606;
                                                    v280 = [v279 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v458, @"userHasHome"];
                                                    v683 = v280;
                                                    v281 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v683 forKeys:&v682 count:1];
                                                    v282 = v277;
                                                    v11 = v612;
                                                    v543 = v281;
                                                    v283 = [v545 initWithDomain:v282 code:2 userInfo:?];
                                                    v544 = 0;
                                                    v45 = 0;
                                                    *v276 = v283;
                                                    v56 = v611;
                                                    goto LABEL_502;
                                                  }

                                                  v544 = 0;
                                                  v45 = 0;
                                                  v56 = v611;
                                                  a4 = v606;
LABEL_503:
                                                  v249 = v547;

                                                  goto LABEL_504;
                                                }

                                                if (a4)
                                                {
                                                  v265 = a4;
                                                  v266 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v267 = *MEMORY[0x1E698F240];
                                                  v684 = *MEMORY[0x1E696A578];
                                                  v268 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                  v457 = objc_opt_class();
                                                  v269 = v268;
                                                  self = v591;
                                                  a4 = v606;
                                                  v544 = [v269 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v457, @"userHasVIP"];
                                                  v685 = v544;
                                                  v270 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v685 forKeys:&v684 count:1];
                                                  v271 = v267;
                                                  v11 = v612;
                                                  v546 = v270;
                                                  v548 = 0;
                                                  v45 = 0;
                                                  *v265 = [v266 initWithDomain:v271 code:2 userInfo:?];
                                                  v56 = v611;
                                                  goto LABEL_503;
                                                }

                                                v548 = 0;
                                                v45 = 0;
                                                v56 = v611;
                                                a4 = v606;
                                                v249 = v547;
LABEL_504:

                                                goto LABEL_505;
                                              }

                                              if (a4)
                                              {
                                                v253 = a4;
                                                v254 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v255 = *MEMORY[0x1E698F240];
                                                v686 = *MEMORY[0x1E696A578];
                                                v256 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                v456 = objc_opt_class();
                                                v257 = v256;
                                                self = v591;
                                                a4 = v606;
                                                v548 = [v257 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v456, @"userNumFavorites"];
                                                v687 = v548;
                                                v258 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v687 forKeys:&v686 count:1];
                                                v259 = v255;
                                                v11 = v612;
                                                v549 = v258;
                                                v260 = [v254 initWithDomain:v259 code:2 userInfo:?];
                                                v249 = 0;
                                                v45 = 0;
                                                *v253 = v260;
                                                v56 = v611;
                                                goto LABEL_504;
                                              }

                                              v249 = 0;
                                              v45 = 0;
                                              v56 = v611;
                                              a4 = v606;
LABEL_505:

                                              goto LABEL_506;
                                            }

                                            if (a4)
                                            {
                                              v245 = a4;
                                              v552 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v246 = *MEMORY[0x1E698F240];
                                              v688 = *MEMORY[0x1E696A578];
                                              v247 = objc_alloc(MEMORY[0x1E696AEC0]);
                                              v455 = objc_opt_class();
                                              v248 = v247;
                                              self = v591;
                                              a4 = v606;
                                              v249 = [v248 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v455, @"userNumVIPPeople"];
                                              v689 = v249;
                                              v250 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v689 forKeys:&v688 count:1];
                                              v251 = v246;
                                              v11 = v612;
                                              v550 = v250;
                                              v252 = [v552 initWithDomain:v251 code:2 userInfo:?];
                                              v551 = 0;
                                              v45 = 0;
                                              *v245 = v252;
                                              v56 = v611;
                                              goto LABEL_505;
                                            }

                                            v551 = 0;
                                            v45 = 0;
                                            v56 = v611;
                                            a4 = v606;
LABEL_506:
                                            v173 = v560;

                                            goto LABEL_507;
                                          }

                                          if (a4)
                                          {
                                            v238 = a4;
                                            v239 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v240 = *MEMORY[0x1E698F240];
                                            v690 = *MEMORY[0x1E696A578];
                                            v241 = objc_alloc(MEMORY[0x1E696AEC0]);
                                            v454 = objc_opt_class();
                                            v242 = v241;
                                            self = v591;
                                            a4 = v606;
                                            v551 = [v242 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v454, @"userNumTrips"];
                                            v691 = v551;
                                            v243 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v691 forKeys:&v690 count:1];
                                            v244 = v240;
                                            v11 = v612;
                                            v553 = v243;
                                            v554 = 0;
                                            v45 = 0;
                                            *v238 = [v239 initWithDomain:v244 code:2 userInfo:?];
                                            v56 = v611;
                                            goto LABEL_506;
                                          }

                                          v554 = 0;
                                          v45 = 0;
LABEL_288:
                                          v56 = v611;
                                          a4 = v606;
                                          v173 = v560;
LABEL_507:

                                          goto LABEL_508;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v189 = v187;
                                          v188 = [MEMORY[0x1E696AD98] numberWithInt:BMPhotosUserAnalyticsLibrarySizeTypeFromString(v189)];

                                          goto LABEL_164;
                                        }

                                        if (a4)
                                        {
                                          v274 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v275 = *MEMORY[0x1E698F240];
                                          v692 = *MEMORY[0x1E696A578];
                                          v554 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"userLibrarySize"];
                                          v693 = v554;
                                          v555 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v693 forKeys:&v692 count:1];
                                          v556 = 0;
                                          v45 = 0;
                                          *a4 = [v274 initWithDomain:v275 code:2 userInfo:?];
                                          v11 = v612;
                                          goto LABEL_288;
                                        }

                                        v556 = 0;
                                        v45 = 0;
LABEL_313:
                                        v11 = v612;
                                        v56 = v611;
                                        a4 = v606;
                                        v173 = v560;
LABEL_508:

                                        goto LABEL_509;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v185 = v183;
                                        v184 = [MEMORY[0x1E696AD98] numberWithInt:BMPhotosUserAnalyticsAssetAgeTypeFromString(v185)];

                                        goto LABEL_156;
                                      }

                                      if (a4)
                                      {
                                        v272 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v273 = *MEMORY[0x1E698F240];
                                        v694 = *MEMORY[0x1E696A578];
                                        v556 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"assetAge"];
                                        v695 = v556;
                                        v557 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v695 forKeys:&v694 count:1];
                                        v558 = 0;
                                        v45 = 0;
                                        *a4 = [v272 initWithDomain:v273 code:2 userInfo:?];
                                        goto LABEL_313;
                                      }

                                      v558 = 0;
                                      v45 = 0;
LABEL_307:
                                      v11 = v612;
                                      v56 = v611;
                                      a4 = v606;
                                      v173 = v560;
LABEL_509:

                                      goto LABEL_510;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v181 = v179;
                                      v180 = [MEMORY[0x1E696AD98] numberWithInt:BMPhotosUserAnalyticsImportSourceTypeFromString(v181)];

                                      goto LABEL_147;
                                    }

                                    if (a4)
                                    {
                                      v263 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v264 = *MEMORY[0x1E698F240];
                                      v696 = *MEMORY[0x1E696A578];
                                      v558 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"importSource"];
                                      v697 = v558;
                                      v559 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v697 forKeys:&v696 count:1];
                                      v561 = 0;
                                      v45 = 0;
                                      *a4 = [v263 initWithDomain:v264 code:2 userInfo:?];
                                      goto LABEL_307;
                                    }

                                    v561 = 0;
                                    v45 = 0;
                                    v56 = v611;
                                    a4 = v606;
                                    v173 = v560;
LABEL_510:

                                    goto LABEL_511;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v177 = v40;
                                    v147 = [MEMORY[0x1E696AD98] numberWithInt:BMPhotosUserAnalyticsMediaTypeTypeFromString(v177)];

                                    goto LABEL_139;
                                  }

                                  if (a4)
                                  {
                                    v261 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v262 = *MEMORY[0x1E698F240];
                                    v698 = *MEMORY[0x1E696A578];
                                    v561 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"mediaType"];
                                    v699 = v561;
                                    v562 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v699 forKeys:&v698 count:1];
                                    v173 = 0;
                                    v45 = 0;
                                    *a4 = [v261 initWithDomain:v262 code:2 userInfo:?];
                                    v11 = v612;
                                    v56 = v611;
                                    a4 = v606;
                                    goto LABEL_510;
                                  }

                                  v173 = 0;
                                  v45 = 0;
                                  v56 = v611;
                                  a4 = v606;
LABEL_511:

                                  goto LABEL_512;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v567 = v36;
                                  goto LABEL_49;
                                }

                                if (a4)
                                {
                                  v162 = a4;
                                  v568 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v163 = *MEMORY[0x1E698F240];
                                  v702 = *MEMORY[0x1E696A578];
                                  v164 = objc_alloc(MEMORY[0x1E696AEC0]);
                                  v452 = objc_opt_class();
                                  v165 = v164;
                                  self = v591;
                                  a4 = v606;
                                  v112 = v588;
                                  v564 = [v165 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v452, @"isCapturedAtPrivateEvent"];
                                  v703 = v564;
                                  v166 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v703 forKeys:&v702 count:1];
                                  v167 = v163;
                                  v11 = v612;
                                  v566 = v166;
                                  v168 = [v568 initWithDomain:v167 code:2 userInfo:?];
                                  v567 = 0;
                                  v45 = 0;
                                  *v162 = v168;
                                  v56 = v611;
LABEL_513:

                                  goto LABEL_514;
                                }

                                v567 = 0;
                                v45 = 0;
                                v56 = v611;
                                a4 = v606;
                                v112 = v588;
LABEL_514:

                                goto LABEL_515;
                              }

                              if (a4)
                              {
                                v155 = a4;
                                v571 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v156 = *MEMORY[0x1E698F240];
                                v704 = *MEMORY[0x1E696A578];
                                v157 = objc_alloc(MEMORY[0x1E696AEC0]);
                                v451 = objc_opt_class();
                                v158 = v157;
                                self = v591;
                                a4 = v606;
                                v112 = v588;
                                v567 = [v158 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v451, @"isCapturedOnWeekend"];
                                v705 = v567;
                                v159 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v705 forKeys:&v704 count:1];
                                v160 = v156;
                                v11 = v612;
                                v569 = v159;
                                v161 = [v571 initWithDomain:v160 code:2 userInfo:?];
                                v570 = 0;
                                v45 = 0;
                                *v155 = v161;
                                v56 = v611;
                                goto LABEL_514;
                              }

                              v570 = 0;
                              v45 = 0;
                              v56 = v611;
                              a4 = v606;
                              v112 = v588;
LABEL_515:

                              goto LABEL_516;
                            }

                            if (a4)
                            {
                              v148 = a4;
                              v574 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v149 = *MEMORY[0x1E698F240];
                              v706 = *MEMORY[0x1E696A578];
                              v150 = objc_alloc(MEMORY[0x1E696AEC0]);
                              v450 = objc_opt_class();
                              v151 = v150;
                              self = v591;
                              a4 = v606;
                              v112 = v588;
                              v570 = [v151 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v450, @"isFavorite"];
                              v707 = v570;
                              v152 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v707 forKeys:&v706 count:1];
                              v153 = v149;
                              v11 = v612;
                              v572 = v152;
                              v154 = [v574 initWithDomain:v153 code:2 userInfo:?];
                              v573 = 0;
                              v45 = 0;
                              *v148 = v154;
                              v56 = v611;
                              goto LABEL_515;
                            }

                            v573 = 0;
                            v45 = 0;
                            v56 = v611;
                            a4 = v606;
                            v112 = v588;
LABEL_516:

                            goto LABEL_517;
                          }

                          if (a4)
                          {
                            v140 = a4;
                            v577 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v141 = *MEMORY[0x1E698F240];
                            v708 = *MEMORY[0x1E696A578];
                            v142 = objc_alloc(MEMORY[0x1E696AEC0]);
                            v449 = objc_opt_class();
                            v143 = v142;
                            self = v591;
                            a4 = v606;
                            v112 = v588;
                            v573 = [v143 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v449, @"isScreenshot"];
                            v709 = v573;
                            v144 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v709 forKeys:&v708 count:1];
                            v145 = v141;
                            v11 = v612;
                            v575 = v144;
                            v146 = [v577 initWithDomain:v145 code:2 userInfo:?];
                            v576 = 0;
                            v45 = 0;
                            *v140 = v146;
                            v56 = v611;
                            goto LABEL_516;
                          }

                          v576 = 0;
                          v45 = 0;
                          v56 = v611;
                          a4 = v606;
                          v112 = v588;
LABEL_517:

                          goto LABEL_518;
                        }

                        if (a4)
                        {
                          v133 = a4;
                          v584 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v134 = *MEMORY[0x1E698F240];
                          v710 = *MEMORY[0x1E696A578];
                          v135 = objc_alloc(MEMORY[0x1E696AEC0]);
                          v448 = objc_opt_class();
                          v136 = v135;
                          self = v591;
                          a4 = v606;
                          v112 = v588;
                          v576 = [v136 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v448, @"isMeme"];
                          v711 = v576;
                          v137 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v711 forKeys:&v710 count:1];
                          v138 = v134;
                          v11 = v612;
                          v582 = v137;
                          v139 = [v584 initWithDomain:v138 code:2 userInfo:?];
                          v583 = 0;
                          v45 = 0;
                          *v133 = v139;
                          v56 = v611;
                          goto LABEL_517;
                        }

                        v583 = 0;
                        v45 = 0;
                        v56 = v611;
                        a4 = v606;
                        v112 = v588;
LABEL_518:

                        goto LABEL_519;
                      }

                      if (a4)
                      {
                        v125 = a4;
                        v590 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v126 = *MEMORY[0x1E698F240];
                        v712 = *MEMORY[0x1E696A578];
                        v580 = v10;
                        v127 = self;
                        v128 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v447 = objc_opt_class();
                        v129 = v128;
                        self = v127;
                        a4 = v606;
                        v112 = v588;
                        v10 = v580;
                        v583 = [v129 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v447, @"isDocument"];
                        v713 = v583;
                        v130 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v713 forKeys:&v712 count:1];
                        v131 = v126;
                        v11 = v612;
                        v585 = v130;
                        v132 = [v590 initWithDomain:v131 code:2 userInfo:?];
                        v589 = 0;
                        v45 = 0;
                        *v125 = v132;
                        v56 = v611;
                        goto LABEL_518;
                      }

                      v589 = 0;
                      v45 = 0;
                      v56 = v611;
                      a4 = v606;
                      v112 = v588;
LABEL_519:

                      goto LABEL_520;
                    }

                    if (a4)
                    {
                      v116 = a4;
                      v117 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v118 = *MEMORY[0x1E698F240];
                      v714 = *MEMORY[0x1E696A578];
                      v579 = v10;
                      v119 = self;
                      v120 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v446 = objc_opt_class();
                      v121 = v120;
                      self = v119;
                      a4 = v606;
                      v10 = v579;
                      v589 = [v121 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v446, @"capturedOnShortTrip"];
                      v715 = v589;
                      v122 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v715 forKeys:&v714 count:1];
                      v123 = v118;
                      v11 = v612;
                      v593 = v122;
                      v124 = [v117 initWithDomain:v123 code:2 userInfo:?];
                      v112 = 0;
                      v45 = 0;
                      *v116 = v124;
                      v56 = v611;
                      goto LABEL_519;
                    }

                    v112 = 0;
                    v45 = 0;
                    v56 = v611;
                    a4 = v606;
LABEL_520:

                    v9 = v618;
                    goto LABEL_521;
                  }

                  if (a4)
                  {
                    v601 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v108 = *MEMORY[0x1E698F240];
                    v716 = *MEMORY[0x1E696A578];
                    v578 = v10;
                    v109 = self;
                    v110 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v445 = objc_opt_class();
                    v111 = v110;
                    self = v109;
                    v10 = v578;
                    v112 = [v111 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v445, @"capturedOnTrip"];
                    v717 = v112;
                    v113 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v717 forKeys:&v716 count:1];
                    v114 = v108;
                    v11 = v612;
                    v596 = v113;
                    v115 = [v601 initWithDomain:v114 code:2 userInfo:?];
                    v600 = 0;
                    v45 = 0;
                    *a4 = v115;
                    a4 = v606;
                    v56 = v611;
                    goto LABEL_520;
                  }

                  v600 = 0;
                  v45 = 0;
                  v56 = v611;
                  v9 = v618;
                  a4 = v606;
LABEL_521:

                  goto LABEL_522;
                }

                if (a4)
                {
                  v604 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v100 = *MEMORY[0x1E698F240];
                  v718 = *MEMORY[0x1E696A578];
                  v586 = v8;
                  v101 = v10;
                  v102 = self;
                  v103 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v444 = objc_opt_class();
                  v104 = v103;
                  self = v102;
                  v9 = v618;
                  v10 = v101;
                  v8 = v586;
                  v600 = [v104 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v444, @"capturedAtFrequentLocation"];
                  v719 = v600;
                  v105 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v719 forKeys:&v718 count:1];
                  v106 = v100;
                  v11 = v612;
                  v602 = v105;
                  v107 = [v604 initWithDomain:v106 code:2 userInfo:?];
                  v603 = 0;
                  v45 = 0;
                  *a4 = v107;
                  a4 = v606;
                  v56 = v611;
                  goto LABEL_521;
                }

                v603 = 0;
                v45 = 0;
                v56 = v611;
                v9 = v618;
                a4 = v606;
LABEL_522:

                goto LABEL_523;
              }

              if (a4)
              {
                v608 = objc_alloc(MEMORY[0x1E696ABC0]);
                v91 = *MEMORY[0x1E698F240];
                v720 = *MEMORY[0x1E696A578];
                v594 = v7;
                v92 = v8;
                v93 = v10;
                v94 = self;
                v95 = objc_alloc(MEMORY[0x1E696AEC0]);
                v443 = objc_opt_class();
                v96 = v95;
                self = v94;
                v9 = v618;
                v10 = v93;
                v8 = v92;
                v7 = v594;
                v603 = [v96 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v443, @"capturedAtWork"];
                v721 = v603;
                v97 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v721 forKeys:&v720 count:1];
                v98 = v91;
                v11 = v612;
                v605 = v97;
                v99 = [v608 initWithDomain:v98 code:2 userInfo:?];
                v607 = 0;
                v45 = 0;
                *a4 = v99;
                a4 = v606;
                v56 = v611;
                goto LABEL_522;
              }

              v607 = 0;
              v45 = 0;
              v56 = v611;
              v9 = v618;
              a4 = v606;
LABEL_523:

              goto LABEL_524;
            }

            if (a4)
            {
              v81 = objc_alloc(MEMORY[0x1E696ABC0]);
              v82 = *MEMORY[0x1E698F240];
              v722 = *MEMORY[0x1E696A578];
              v597 = v6;
              v83 = v7;
              v84 = v8;
              v85 = v10;
              v86 = self;
              v87 = objc_alloc(MEMORY[0x1E696AEC0]);
              v442 = objc_opt_class();
              v88 = v87;
              self = v86;
              v9 = v618;
              v10 = v85;
              v8 = v84;
              v7 = v83;
              v6 = v597;
              v607 = [v88 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v442, @"capturedAtHome"];
              v723 = v607;
              v89 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v723 forKeys:&v722 count:1];
              v90 = v82;
              v11 = v612;
              v609 = v89;
              v45 = 0;
              *a4 = [v81 initWithDomain:v90 code:2 userInfo:?];
              a4 = 0;
              v56 = v611;
              goto LABEL_523;
            }

            v45 = 0;
            v56 = v611;
            v9 = v618;
LABEL_524:

            goto LABEL_525;
          }

          if (a4)
          {
            v614 = objc_alloc(MEMORY[0x1E696ABC0]);
            v69 = *MEMORY[0x1E698F240];
            v724 = *MEMORY[0x1E696A578];
            v70 = v6;
            v71 = v7;
            v72 = v8;
            v73 = v10;
            v74 = self;
            v75 = objc_alloc(MEMORY[0x1E696AEC0]);
            v441 = objc_opt_class();
            v76 = v75;
            self = v74;
            v9 = v618;
            v10 = v73;
            v8 = v72;
            v7 = v71;
            v6 = v70;
            v77 = [v76 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v441, @"containsPets"];
            v725 = v77;
            v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v725 forKeys:&v724 count:1];
            v79 = v69;
            v11 = v612;
            v610 = v78;
            v80 = [v614 initWithDomain:v79 code:2 userInfo:?];
            v613 = 0;
            v45 = 0;
            *a4 = v80;
            a4 = v77;
            v56 = v611;
            goto LABEL_524;
          }

          v613 = 0;
          v45 = 0;
          v56 = v611;
          v9 = v618;
LABEL_525:

          goto LABEL_526;
        }

        v56 = v12;
        if (a4)
        {
          v620 = objc_alloc(MEMORY[0x1E696ABC0]);
          v617 = *MEMORY[0x1E698F240];
          v726 = *MEMORY[0x1E696A578];
          v59 = v6;
          v60 = v7;
          v61 = v8;
          v62 = v10;
          v63 = self;
          v64 = objc_alloc(MEMORY[0x1E696AEC0]);
          v440 = objc_opt_class();
          v65 = v64;
          self = v63;
          v9 = v618;
          v10 = v62;
          v8 = v61;
          v7 = v60;
          v6 = v59;
          v11 = v612;
          v613 = [v65 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v440, @"faceCount"];
          v727 = v613;
          v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v727 forKeys:&v726 count:1];
          v67 = v617;
          v615 = v66;
          v68 = [v620 initWithDomain:v67 code:2 userInfo:?];
          v619 = 0;
          v45 = 0;
          *a4 = v68;
          goto LABEL_525;
        }

        v619 = 0;
        v45 = 0;
        v9 = v618;
LABEL_526:

        goto LABEL_527;
      }

      if (a4)
      {
        v50 = a4;
        v51 = objc_alloc(MEMORY[0x1E696ABC0]);
        v592 = self;
        v52 = *MEMORY[0x1E698F240];
        v728 = *MEMORY[0x1E696A578];
        v53 = v10;
        v616 = v50;
        v54 = objc_alloc(MEMORY[0x1E696AEC0]);
        v439 = objc_opt_class();
        v55 = v54;
        v10 = v53;
        v619 = [v55 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v439, @"containsVIP"];
        v729 = v619;
        v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v729 forKeys:&v728 count:1];
        v57 = v52;
        self = v592;
        v58 = [v51 initWithDomain:v57 code:2 userInfo:v56];
        v11 = 0;
        v45 = 0;
        *v616 = v58;
        goto LABEL_526;
      }

      v11 = 0;
      v45 = 0;
LABEL_527:

      goto LABEL_528;
    }

    if (a4)
    {
      v46 = objc_alloc(MEMORY[0x1E696ABC0]);
      v47 = *MEMORY[0x1E698F240];
      v730 = *MEMORY[0x1E696A578];
      v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"userEvent"];
      v731 = v48;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v731 forKeys:&v730 count:1];
      v49 = v47;
      v11 = v48;
      v9 = 0;
      v45 = 0;
      *a4 = [v46 initWithDomain:v49 code:2 userInfo:v10];
      goto LABEL_527;
    }

    v9 = 0;
    v45 = 0;
LABEL_528:

    goto LABEL_529;
  }

  if (a4)
  {
    v41 = objc_alloc(MEMORY[0x1E696ABC0]);
    v42 = *MEMORY[0x1E698F240];
    v732 = *MEMORY[0x1E696A578];
    v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"identifier"];
    v733[0] = v43;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v733 forKeys:&v732 count:1];
    v44 = v41;
    v9 = v43;
    v621 = 0;
    v45 = 0;
    *a4 = [v44 initWithDomain:v42 code:2 userInfo:v8];
    goto LABEL_528;
  }

  v621 = 0;
  v45 = 0;
LABEL_529:

  v431 = *MEMORY[0x1E69E9840];
  return v45;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMPhotosUserAnalytics *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v58 = a3;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_userEvent)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasContainsVIP)
  {
    containsVIP = self->_containsVIP;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasFaceCount)
  {
    faceCount = self->_faceCount;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasContainsPets)
  {
    containsPets = self->_containsPets;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasCapturedAtHome)
  {
    capturedAtHome = self->_capturedAtHome;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasCapturedAtWork)
  {
    capturedAtWork = self->_capturedAtWork;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasCapturedAtFrequentLocation)
  {
    capturedAtFrequentLocation = self->_capturedAtFrequentLocation;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasCapturedOnTrip)
  {
    capturedOnTrip = self->_capturedOnTrip;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasCapturedOnShortTrip)
  {
    capturedOnShortTrip = self->_capturedOnShortTrip;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsDocument)
  {
    isDocument = self->_isDocument;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsMeme)
  {
    isMeme = self->_isMeme;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsScreenshot)
  {
    isScreenshot = self->_isScreenshot;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsFavorite)
  {
    isFavorite = self->_isFavorite;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsCapturedOnWeekend)
  {
    isCapturedOnWeekend = self->_isCapturedOnWeekend;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsCapturedAtPrivateEvent)
  {
    isCapturedAtPrivateEvent = self->_isCapturedAtPrivateEvent;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsCapturedOnHoliday)
  {
    isCapturedOnHoliday = self->_isCapturedOnHoliday;
    PBDataWriterWriteBOOLField();
  }

  mediaType = self->_mediaType;
  PBDataWriterWriteUint32Field();
  importSource = self->_importSource;
  PBDataWriterWriteUint32Field();
  assetAge = self->_assetAge;
  PBDataWriterWriteUint32Field();
  userLibrarySize = self->_userLibrarySize;
  PBDataWriterWriteUint32Field();
  if (self->_hasUserNumTrips)
  {
    userNumTrips = self->_userNumTrips;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasUserNumVIPPeople)
  {
    userNumVIPPeople = self->_userNumVIPPeople;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasUserNumFavorites)
  {
    userNumFavorites = self->_userNumFavorites;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasUserHasVIP)
  {
    userHasVIP = self->_userHasVIP;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasUserHasHome)
  {
    userHasHome = self->_userHasHome;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasUserHasPet)
  {
    userHasPet = self->_userHasPet;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasContainsBaby)
  {
    containsBaby = self->_containsBaby;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasContainsSocialGroup)
  {
    containsSocialGroup = self->_containsSocialGroup;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasContainsMyPet)
  {
    containsMyPet = self->_containsMyPet;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasContainsCoWorker)
  {
    containsCoWorker = self->_containsCoWorker;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasContainsFamily)
  {
    containsFamily = self->_containsFamily;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasContainsFriends)
  {
    containsFriends = self->_containsFriends;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasContainsPartner)
  {
    containsPartner = self->_containsPartner;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasContainsParent)
  {
    containsParent = self->_containsParent;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasContainsSibling)
  {
    containsSibling = self->_containsSibling;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasContainsChild)
  {
    containsChild = self->_containsChild;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsCoupon)
  {
    isCoupon = self->_isCoupon;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsRecipe)
  {
    isRecipe = self->_isRecipe;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsReceipt)
  {
    isReceipt = self->_isReceipt;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsRecentView)
  {
    isRecentView = self->_isRecentView;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsRecentEdit)
  {
    isRecentEdit = self->_isRecentEdit;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsRecentShare)
  {
    isRecentShare = self->_isRecentShare;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsRecentFavorite)
  {
    isRecentFavorite = self->_isRecentFavorite;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsContainedInSharedAlbum)
  {
    isContainedInSharedAlbum = self->_isContainedInSharedAlbum;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsContainedInOnThisDay)
  {
    isContainedInOnThisDay = self->_isContainedInOnThisDay;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasCapturedAtAOI)
  {
    capturedAtAOI = self->_capturedAtAOI;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasCapturedAtPOI)
  {
    capturedAtPOI = self->_capturedAtPOI;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasCapturedAtROI)
  {
    capturedAtROI = self->_capturedAtROI;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasCapturedAtBusiness)
  {
    capturedAtBusiness = self->_capturedAtBusiness;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsCapturedAtPublicEvent)
  {
    isCapturedAtPublicEvent = self->_isCapturedAtPublicEvent;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsContainedInVisualTrend)
  {
    isContainedInVisualTrend = self->_isContainedInVisualTrend;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsContainedInActivity)
  {
    isContainedInActivity = self->_isContainedInActivity;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsContainedInChildActivity)
  {
    isContainedInChildActivity = self->_isContainedInChildActivity;
    PBDataWriterWriteBOOLField();
  }

  userLibraryAgeInDays = self->_userLibraryAgeInDays;
  PBDataWriterWriteUint32Field();
  if (self->_hasUserisDAU)
  {
    userisDAU = self->_userisDAU;
    PBDataWriterWriteFloatField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BMPhotosUserAnalytics;
  v5 = [(BMEventBase *)&v9 init];
  v6 = v5;
  if (v5 && !BMPhotosUserAnalyticsReadFrom(v5, v4))
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (NSString)description
{
  v20 = objc_alloc(MEMORY[0x1E696AEC0]);
  v60 = [(BMPhotosUserAnalytics *)self identifier];
  v59 = [(BMPhotosUserAnalytics *)self userEvent];
  v62 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsVIP](self, "containsVIP")}];
  v61 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPhotosUserAnalytics faceCount](self, "faceCount")}];
  v57 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsPets](self, "containsPets")}];
  v56 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics capturedAtHome](self, "capturedAtHome")}];
  v58 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics capturedAtWork](self, "capturedAtWork")}];
  v54 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics capturedAtFrequentLocation](self, "capturedAtFrequentLocation")}];
  v53 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics capturedOnTrip](self, "capturedOnTrip")}];
  v55 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics capturedOnShortTrip](self, "capturedOnShortTrip")}];
  v51 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isDocument](self, "isDocument")}];
  v50 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isMeme](self, "isMeme")}];
  v52 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isScreenshot](self, "isScreenshot")}];
  v48 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isFavorite](self, "isFavorite")}];
  v47 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isCapturedOnWeekend](self, "isCapturedOnWeekend")}];
  v49 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isCapturedAtPrivateEvent](self, "isCapturedAtPrivateEvent")}];
  v45 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isCapturedOnHoliday](self, "isCapturedOnHoliday")}];
  v44 = BMPhotosUserAnalyticsMediaTypeTypeAsString([(BMPhotosUserAnalytics *)self mediaType]);
  v46 = BMPhotosUserAnalyticsImportSourceTypeAsString([(BMPhotosUserAnalytics *)self importSource]);
  v43 = BMPhotosUserAnalyticsAssetAgeTypeAsString([(BMPhotosUserAnalytics *)self assetAge]);
  v42 = BMPhotosUserAnalyticsLibrarySizeTypeAsString([(BMPhotosUserAnalytics *)self userLibrarySize]);
  v41 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPhotosUserAnalytics userNumTrips](self, "userNumTrips")}];
  v40 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPhotosUserAnalytics userNumVIPPeople](self, "userNumVIPPeople")}];
  v39 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPhotosUserAnalytics userNumFavorites](self, "userNumFavorites")}];
  v38 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics userHasVIP](self, "userHasVIP")}];
  v37 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics userHasHome](self, "userHasHome")}];
  v36 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics userHasPet](self, "userHasPet")}];
  v35 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsBaby](self, "containsBaby")}];
  v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsSocialGroup](self, "containsSocialGroup")}];
  v33 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsMyPet](self, "containsMyPet")}];
  v32 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsCoWorker](self, "containsCoWorker")}];
  v31 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsFamily](self, "containsFamily")}];
  v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsFriends](self, "containsFriends")}];
  v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsPartner](self, "containsPartner")}];
  v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsParent](self, "containsParent")}];
  v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsSibling](self, "containsSibling")}];
  v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics containsChild](self, "containsChild")}];
  v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isCoupon](self, "isCoupon")}];
  v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isRecipe](self, "isRecipe")}];
  v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isReceipt](self, "isReceipt")}];
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isRecentView](self, "isRecentView")}];
  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isRecentEdit](self, "isRecentEdit")}];
  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isRecentShare](self, "isRecentShare")}];
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isRecentFavorite](self, "isRecentFavorite")}];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isContainedInSharedAlbum](self, "isContainedInSharedAlbum")}];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isContainedInOnThisDay](self, "isContainedInOnThisDay")}];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics capturedAtAOI](self, "capturedAtAOI")}];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics capturedAtPOI](self, "capturedAtPOI")}];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics capturedAtROI](self, "capturedAtROI")}];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics capturedAtBusiness](self, "capturedAtBusiness")}];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isCapturedAtPublicEvent](self, "isCapturedAtPublicEvent")}];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isContainedInVisualTrend](self, "isContainedInVisualTrend")}];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isContainedInActivity](self, "isContainedInActivity")}];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosUserAnalytics isContainedInChildActivity](self, "isContainedInChildActivity")}];
  v4 = BMPhotosUserAnalyticsUserLibraryAgeInDaysTypeAsString([(BMPhotosUserAnalytics *)self userLibraryAgeInDays]);
  v5 = MEMORY[0x1E696AD98];
  [(BMPhotosUserAnalytics *)self userisDAU];
  v6 = [v5 numberWithDouble:?];
  v21 = [v20 initWithFormat:@"BMPhotosUserAnalytics with identifier: %@, userEvent: %@, containsVIP: %@, faceCount: %@, containsPets: %@, capturedAtHome: %@, capturedAtWork: %@, capturedAtFrequentLocation: %@, capturedOnTrip: %@, capturedOnShortTrip: %@, isDocument: %@, isMeme: %@, isScreenshot: %@, isFavorite: %@, isCapturedOnWeekend: %@, isCapturedAtPrivateEvent: %@, isCapturedOnHoliday: %@, mediaType: %@, importSource: %@, assetAge: %@, userLibrarySize: %@, userNumTrips: %@, userNumVIPPeople: %@, userNumFavorites: %@, userHasVIP: %@, userHasHome: %@, userHasPet: %@, containsBaby: %@, containsSocialGroup: %@, containsMyPet: %@, containsCoWorker: %@, containsFamily: %@, containsFriends: %@, containsPartner: %@, containsParent: %@, containsSibling: %@, containsChild: %@, isCoupon: %@, isRecipe: %@, isReceipt: %@, isRecentView: %@, isRecentEdit: %@, isRecentShare: %@, isRecentFavorite: %@, isContainedInSharedAlbum: %@, isContainedInOnThisDay: %@, capturedAtAOI: %@, capturedAtPOI: %@, capturedAtROI: %@, capturedAtBusiness: %@, isCapturedAtPublicEvent: %@, isContainedInVisualTrend: %@, isContainedInActivity: %@, isContainedInChildActivity: %@, userLibraryAgeInDays: %@, userisDAU: %@", v60, v59, v62, v61, v57, v56, v58, v54, v53, v55, v51, v50, v52, v48, v47, v49, v45, v44, v46, v43, v42, v41, v40, v39, v38, v37, v36, v35, v34, v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v19, v18, v17, v16, v15, v14, v13, v12, v11, v10, v9, v8, v3, v4, v6];

  return v21;
}

- (BMPhotosUserAnalytics)initWithIdentifier:(id)a3 userEvent:(id)a4 containsVIP:(id)a5 faceCount:(id)a6 containsPets:(id)a7 capturedAtHome:(id)a8 capturedAtWork:(id)a9 capturedAtFrequentLocation:(id)a10 capturedOnTrip:(id)a11 capturedOnShortTrip:(id)a12 isDocument:(id)a13 isMeme:(id)a14 isScreenshot:(id)a15 isFavorite:(id)a16 isCapturedOnWeekend:(id)a17 isCapturedAtPrivateEvent:(id)a18 isCapturedOnHoliday:(id)a19 mediaType:(int)a20 importSource:(int)a21 assetAge:(int)a22 userLibrarySize:(int)a23 userNumTrips:(id)a24 userNumVIPPeople:(id)a25 userNumFavorites:(id)a26 userHasVIP:(id)a27 userHasHome:(id)a28 userHasPet:(id)a29 containsBaby:(id)a30 containsSocialGroup:(id)a31 containsMyPet:(id)a32 containsCoWorker:(id)a33 containsFamily:(id)a34 containsFriends:(id)a35 containsPartner:(id)a36 containsParent:(id)a37 containsSibling:(id)a38 containsChild:(id)a39 isCoupon:(id)a40 isRecipe:(id)a41 isReceipt:(id)a42 isRecentView:(id)a43 isRecentEdit:(id)a44 isRecentShare:(id)a45 isRecentFavorite:(id)a46 isContainedInSharedAlbum:(id)a47 isContainedInOnThisDay:(id)a48 capturedAtAOI:(id)a49 capturedAtPOI:(id)a50 capturedAtROI:(id)a51 capturedAtBusiness:(id)a52 isCapturedAtPublicEvent:(id)a53 isContainedInVisualTrend:(id)a54 isContainedInActivity:(id)a55 isContainedInChildActivity:(id)a56 userLibraryAgeInDays:(int)a57 userisDAU:(id)a58
{
  v84 = a3;
  v81 = a4;
  v83 = a4;
  v62 = a5;
  v63 = a6;
  v64 = a7;
  v125 = a8;
  v123 = a9;
  v65 = a10;
  v66 = a11;
  v122 = a12;
  v67 = a13;
  v68 = a14;
  v69 = a15;
  v121 = a16;
  v120 = a17;
  v119 = a18;
  v118 = a19;
  v70 = a24;
  v117 = a25;
  v116 = a26;
  v115 = a27;
  v114 = a28;
  v113 = a29;
  v112 = a30;
  v111 = a31;
  v110 = a32;
  v109 = a33;
  v108 = a34;
  v107 = a35;
  v106 = a36;
  v105 = a37;
  v104 = a38;
  v103 = a39;
  v102 = a40;
  v101 = a41;
  v100 = a42;
  v99 = a43;
  v98 = a44;
  v97 = a45;
  v96 = a46;
  v95 = a47;
  v94 = a48;
  v93 = a49;
  v92 = a50;
  v91 = a51;
  v90 = a52;
  v89 = a53;
  v88 = a54;
  v87 = a55;
  v86 = a56;
  v85 = a58;
  v126.receiver = self;
  v126.super_class = BMPhotosUserAnalytics;
  v71 = [(BMEventBase *)&v126 init];

  if (v71)
  {
    v71->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v71->_identifier, a3);
    objc_storeStrong(&v71->_userEvent, v81);
    if (v62)
    {
      v71->_hasContainsVIP = 1;
      v71->_containsVIP = [v62 BOOLValue];
    }

    else
    {
      v71->_hasContainsVIP = 0;
      v71->_containsVIP = 0;
    }

    if (v63)
    {
      v71->_hasFaceCount = 1;
      v72 = [v63 intValue];
    }

    else
    {
      v71->_hasFaceCount = 0;
      v72 = -1;
    }

    v71->_faceCount = v72;
    if (v64)
    {
      v71->_hasContainsPets = 1;
      v71->_containsPets = [v64 BOOLValue];
    }

    else
    {
      v71->_hasContainsPets = 0;
      v71->_containsPets = 0;
    }

    if (v125)
    {
      v71->_hasCapturedAtHome = 1;
      v71->_capturedAtHome = [v125 BOOLValue];
    }

    else
    {
      v71->_hasCapturedAtHome = 0;
      v71->_capturedAtHome = 0;
    }

    if (v123)
    {
      v71->_hasCapturedAtWork = 1;
      v71->_capturedAtWork = [v123 BOOLValue];
    }

    else
    {
      v71->_hasCapturedAtWork = 0;
      v71->_capturedAtWork = 0;
    }

    if (v65)
    {
      v71->_hasCapturedAtFrequentLocation = 1;
      v71->_capturedAtFrequentLocation = [v65 BOOLValue];
    }

    else
    {
      v71->_hasCapturedAtFrequentLocation = 0;
      v71->_capturedAtFrequentLocation = 0;
    }

    if (v66)
    {
      v71->_hasCapturedOnTrip = 1;
      v71->_capturedOnTrip = [v66 BOOLValue];
    }

    else
    {
      v71->_hasCapturedOnTrip = 0;
      v71->_capturedOnTrip = 0;
    }

    if (v122)
    {
      v71->_hasCapturedOnShortTrip = 1;
      v71->_capturedOnShortTrip = [v122 BOOLValue];
    }

    else
    {
      v71->_hasCapturedOnShortTrip = 0;
      v71->_capturedOnShortTrip = 0;
    }

    if (v67)
    {
      v71->_hasIsDocument = 1;
      v71->_isDocument = [v67 BOOLValue];
    }

    else
    {
      v71->_hasIsDocument = 0;
      v71->_isDocument = 0;
    }

    if (v68)
    {
      v71->_hasIsMeme = 1;
      v71->_isMeme = [v68 BOOLValue];
    }

    else
    {
      v71->_hasIsMeme = 0;
      v71->_isMeme = 0;
    }

    if (v69)
    {
      v71->_hasIsScreenshot = 1;
      v71->_isScreenshot = [v69 BOOLValue];
    }

    else
    {
      v71->_hasIsScreenshot = 0;
      v71->_isScreenshot = 0;
    }

    if (v121)
    {
      v71->_hasIsFavorite = 1;
      v71->_isFavorite = [v121 BOOLValue];
    }

    else
    {
      v71->_hasIsFavorite = 0;
      v71->_isFavorite = 0;
    }

    if (v120)
    {
      v71->_hasIsCapturedOnWeekend = 1;
      v71->_isCapturedOnWeekend = [v120 BOOLValue];
    }

    else
    {
      v71->_hasIsCapturedOnWeekend = 0;
      v71->_isCapturedOnWeekend = 0;
    }

    if (v119)
    {
      v71->_hasIsCapturedAtPrivateEvent = 1;
      v71->_isCapturedAtPrivateEvent = [v119 BOOLValue];
    }

    else
    {
      v71->_hasIsCapturedAtPrivateEvent = 0;
      v71->_isCapturedAtPrivateEvent = 0;
    }

    if (v118)
    {
      v71->_hasIsCapturedOnHoliday = 1;
      v71->_isCapturedOnHoliday = [v118 BOOLValue];
    }

    else
    {
      v71->_hasIsCapturedOnHoliday = 0;
      v71->_isCapturedOnHoliday = 0;
    }

    v71->_mediaType = a20;
    v71->_importSource = a21;
    v71->_assetAge = a22;
    v71->_userLibrarySize = a23;
    if (v70)
    {
      v71->_hasUserNumTrips = 1;
      v73 = [v70 intValue];
    }

    else
    {
      v71->_hasUserNumTrips = 0;
      v73 = -1;
    }

    v71->_userNumTrips = v73;
    if (v117)
    {
      v71->_hasUserNumVIPPeople = 1;
      v74 = [v117 intValue];
    }

    else
    {
      v71->_hasUserNumVIPPeople = 0;
      v74 = -1;
    }

    v71->_userNumVIPPeople = v74;
    if (v116)
    {
      v71->_hasUserNumFavorites = 1;
      v75 = [v116 intValue];
    }

    else
    {
      v71->_hasUserNumFavorites = 0;
      v75 = -1;
    }

    v71->_userNumFavorites = v75;
    if (v115)
    {
      v71->_hasUserHasVIP = 1;
      v71->_userHasVIP = [v115 BOOLValue];
    }

    else
    {
      v71->_hasUserHasVIP = 0;
      v71->_userHasVIP = 0;
    }

    if (v114)
    {
      v71->_hasUserHasHome = 1;
      v71->_userHasHome = [v114 BOOLValue];
    }

    else
    {
      v71->_hasUserHasHome = 0;
      v71->_userHasHome = 0;
    }

    if (v113)
    {
      v71->_hasUserHasPet = 1;
      v71->_userHasPet = [v113 BOOLValue];
    }

    else
    {
      v71->_hasUserHasPet = 0;
      v71->_userHasPet = 0;
    }

    if (v112)
    {
      v71->_hasContainsBaby = 1;
      v71->_containsBaby = [v112 BOOLValue];
    }

    else
    {
      v71->_hasContainsBaby = 0;
      v71->_containsBaby = 0;
    }

    if (v111)
    {
      v71->_hasContainsSocialGroup = 1;
      v71->_containsSocialGroup = [v111 BOOLValue];
    }

    else
    {
      v71->_hasContainsSocialGroup = 0;
      v71->_containsSocialGroup = 0;
    }

    if (v110)
    {
      v71->_hasContainsMyPet = 1;
      v71->_containsMyPet = [v110 BOOLValue];
    }

    else
    {
      v71->_hasContainsMyPet = 0;
      v71->_containsMyPet = 0;
    }

    if (v109)
    {
      v71->_hasContainsCoWorker = 1;
      v71->_containsCoWorker = [v109 BOOLValue];
    }

    else
    {
      v71->_hasContainsCoWorker = 0;
      v71->_containsCoWorker = 0;
    }

    if (v108)
    {
      v71->_hasContainsFamily = 1;
      v71->_containsFamily = [v108 BOOLValue];
    }

    else
    {
      v71->_hasContainsFamily = 0;
      v71->_containsFamily = 0;
    }

    if (v107)
    {
      v71->_hasContainsFriends = 1;
      v71->_containsFriends = [v107 BOOLValue];
    }

    else
    {
      v71->_hasContainsFriends = 0;
      v71->_containsFriends = 0;
    }

    if (v106)
    {
      v71->_hasContainsPartner = 1;
      v71->_containsPartner = [v106 BOOLValue];
    }

    else
    {
      v71->_hasContainsPartner = 0;
      v71->_containsPartner = 0;
    }

    if (v105)
    {
      v71->_hasContainsParent = 1;
      v71->_containsParent = [v105 BOOLValue];
    }

    else
    {
      v71->_hasContainsParent = 0;
      v71->_containsParent = 0;
    }

    if (v104)
    {
      v71->_hasContainsSibling = 1;
      v71->_containsSibling = [v104 BOOLValue];
    }

    else
    {
      v71->_hasContainsSibling = 0;
      v71->_containsSibling = 0;
    }

    if (v103)
    {
      v71->_hasContainsChild = 1;
      v71->_containsChild = [v103 BOOLValue];
    }

    else
    {
      v71->_hasContainsChild = 0;
      v71->_containsChild = 0;
    }

    if (v102)
    {
      v71->_hasIsCoupon = 1;
      v71->_isCoupon = [v102 BOOLValue];
    }

    else
    {
      v71->_hasIsCoupon = 0;
      v71->_isCoupon = 0;
    }

    if (v101)
    {
      v71->_hasIsRecipe = 1;
      v71->_isRecipe = [v101 BOOLValue];
    }

    else
    {
      v71->_hasIsRecipe = 0;
      v71->_isRecipe = 0;
    }

    if (v100)
    {
      v71->_hasIsReceipt = 1;
      v71->_isReceipt = [v100 BOOLValue];
    }

    else
    {
      v71->_hasIsReceipt = 0;
      v71->_isReceipt = 0;
    }

    if (v99)
    {
      v71->_hasIsRecentView = 1;
      v71->_isRecentView = [v99 BOOLValue];
    }

    else
    {
      v71->_hasIsRecentView = 0;
      v71->_isRecentView = 0;
    }

    if (v98)
    {
      v71->_hasIsRecentEdit = 1;
      v71->_isRecentEdit = [v98 BOOLValue];
    }

    else
    {
      v71->_hasIsRecentEdit = 0;
      v71->_isRecentEdit = 0;
    }

    if (v97)
    {
      v71->_hasIsRecentShare = 1;
      v71->_isRecentShare = [v97 BOOLValue];
    }

    else
    {
      v71->_hasIsRecentShare = 0;
      v71->_isRecentShare = 0;
    }

    if (v96)
    {
      v71->_hasIsRecentFavorite = 1;
      v71->_isRecentFavorite = [v96 BOOLValue];
    }

    else
    {
      v71->_hasIsRecentFavorite = 0;
      v71->_isRecentFavorite = 0;
    }

    if (v95)
    {
      v71->_hasIsContainedInSharedAlbum = 1;
      v71->_isContainedInSharedAlbum = [v95 BOOLValue];
    }

    else
    {
      v71->_hasIsContainedInSharedAlbum = 0;
      v71->_isContainedInSharedAlbum = 0;
    }

    if (v94)
    {
      v71->_hasIsContainedInOnThisDay = 1;
      v71->_isContainedInOnThisDay = [v94 BOOLValue];
    }

    else
    {
      v71->_hasIsContainedInOnThisDay = 0;
      v71->_isContainedInOnThisDay = 0;
    }

    if (v93)
    {
      v71->_hasCapturedAtAOI = 1;
      v71->_capturedAtAOI = [v93 BOOLValue];
    }

    else
    {
      v71->_hasCapturedAtAOI = 0;
      v71->_capturedAtAOI = 0;
    }

    if (v92)
    {
      v71->_hasCapturedAtPOI = 1;
      v71->_capturedAtPOI = [v92 BOOLValue];
    }

    else
    {
      v71->_hasCapturedAtPOI = 0;
      v71->_capturedAtPOI = 0;
    }

    if (v91)
    {
      v71->_hasCapturedAtROI = 1;
      v71->_capturedAtROI = [v91 BOOLValue];
    }

    else
    {
      v71->_hasCapturedAtROI = 0;
      v71->_capturedAtROI = 0;
    }

    if (v90)
    {
      v71->_hasCapturedAtBusiness = 1;
      v71->_capturedAtBusiness = [v90 BOOLValue];
    }

    else
    {
      v71->_hasCapturedAtBusiness = 0;
      v71->_capturedAtBusiness = 0;
    }

    if (v89)
    {
      v71->_hasIsCapturedAtPublicEvent = 1;
      v71->_isCapturedAtPublicEvent = [v89 BOOLValue];
    }

    else
    {
      v71->_hasIsCapturedAtPublicEvent = 0;
      v71->_isCapturedAtPublicEvent = 0;
    }

    if (v88)
    {
      v71->_hasIsContainedInVisualTrend = 1;
      v71->_isContainedInVisualTrend = [v88 BOOLValue];
    }

    else
    {
      v71->_hasIsContainedInVisualTrend = 0;
      v71->_isContainedInVisualTrend = 0;
    }

    if (v87)
    {
      v71->_hasIsContainedInActivity = 1;
      v71->_isContainedInActivity = [v87 BOOLValue];
    }

    else
    {
      v71->_hasIsContainedInActivity = 0;
      v71->_isContainedInActivity = 0;
    }

    if (v86)
    {
      v71->_hasIsContainedInChildActivity = 1;
      v71->_isContainedInChildActivity = [v86 BOOLValue];
    }

    else
    {
      v71->_hasIsContainedInChildActivity = 0;
      v71->_isContainedInChildActivity = 0;
    }

    v71->_userLibraryAgeInDays = a57;
    if (v85)
    {
      v71->_hasUserisDAU = 1;
      [v85 floatValue];
      v77 = v76;
    }

    else
    {
      v71->_hasUserisDAU = 0;
      v77 = -1.0;
    }

    v71->_userisDAU = v77;
  }

  v78 = v71;

  return v78;
}

+ (id)protoFields
{
  v61[56] = *MEMORY[0x1E69E9840];
  v60 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:1 type:13 subMessageClass:0];
  v61[0] = v60;
  v59 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userEvent" number:2 type:13 subMessageClass:0];
  v61[1] = v59;
  v58 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"containsVIP" number:3 type:12 subMessageClass:0];
  v61[2] = v58;
  v57 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"faceCount" number:4 type:2 subMessageClass:0];
  v61[3] = v57;
  v56 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"containsPets" number:5 type:12 subMessageClass:0];
  v61[4] = v56;
  v55 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"capturedAtHome" number:6 type:12 subMessageClass:0];
  v61[5] = v55;
  v54 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"capturedAtWork" number:7 type:12 subMessageClass:0];
  v61[6] = v54;
  v53 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"capturedAtFrequentLocation" number:8 type:12 subMessageClass:0];
  v61[7] = v53;
  v52 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"capturedOnTrip" number:9 type:12 subMessageClass:0];
  v61[8] = v52;
  v51 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"capturedOnShortTrip" number:10 type:12 subMessageClass:0];
  v61[9] = v51;
  v50 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isDocument" number:11 type:12 subMessageClass:0];
  v61[10] = v50;
  v49 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isMeme" number:12 type:12 subMessageClass:0];
  v61[11] = v49;
  v48 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isScreenshot" number:13 type:12 subMessageClass:0];
  v61[12] = v48;
  v47 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isFavorite" number:14 type:12 subMessageClass:0];
  v61[13] = v47;
  v46 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isCapturedOnWeekend" number:15 type:12 subMessageClass:0];
  v61[14] = v46;
  v45 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isCapturedAtPrivateEvent" number:16 type:12 subMessageClass:0];
  v61[15] = v45;
  v44 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isCapturedOnHoliday" number:17 type:12 subMessageClass:0];
  v61[16] = v44;
  v43 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mediaType" number:18 type:4 subMessageClass:0];
  v61[17] = v43;
  v42 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"importSource" number:19 type:4 subMessageClass:0];
  v61[18] = v42;
  v41 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"assetAge" number:20 type:4 subMessageClass:0];
  v61[19] = v41;
  v40 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userLibrarySize" number:21 type:4 subMessageClass:0];
  v61[20] = v40;
  v39 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userNumTrips" number:22 type:2 subMessageClass:0];
  v61[21] = v39;
  v38 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userNumVIPPeople" number:23 type:2 subMessageClass:0];
  v61[22] = v38;
  v37 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userNumFavorites" number:24 type:2 subMessageClass:0];
  v61[23] = v37;
  v36 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userHasVIP" number:25 type:12 subMessageClass:0];
  v61[24] = v36;
  v35 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userHasHome" number:26 type:12 subMessageClass:0];
  v61[25] = v35;
  v34 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userHasPet" number:27 type:12 subMessageClass:0];
  v61[26] = v34;
  v33 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"containsBaby" number:28 type:12 subMessageClass:0];
  v61[27] = v33;
  v32 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"containsSocialGroup" number:29 type:12 subMessageClass:0];
  v61[28] = v32;
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"containsMyPet" number:30 type:12 subMessageClass:0];
  v61[29] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"containsCoWorker" number:31 type:12 subMessageClass:0];
  v61[30] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"containsFamily" number:32 type:12 subMessageClass:0];
  v61[31] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"containsFriends" number:33 type:12 subMessageClass:0];
  v61[32] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"containsPartner" number:34 type:12 subMessageClass:0];
  v61[33] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"containsParent" number:35 type:12 subMessageClass:0];
  v61[34] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"containsSibling" number:36 type:12 subMessageClass:0];
  v61[35] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"containsChild" number:37 type:12 subMessageClass:0];
  v61[36] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isCoupon" number:38 type:12 subMessageClass:0];
  v61[37] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isRecipe" number:39 type:12 subMessageClass:0];
  v61[38] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isReceipt" number:40 type:12 subMessageClass:0];
  v61[39] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isRecentView" number:41 type:12 subMessageClass:0];
  v61[40] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isRecentEdit" number:42 type:12 subMessageClass:0];
  v61[41] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isRecentShare" number:43 type:12 subMessageClass:0];
  v61[42] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isRecentFavorite" number:44 type:12 subMessageClass:0];
  v61[43] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isContainedInSharedAlbum" number:45 type:12 subMessageClass:0];
  v61[44] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isContainedInOnThisDay" number:46 type:12 subMessageClass:0];
  v61[45] = v15;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"capturedAtAOI" number:47 type:12 subMessageClass:0];
  v61[46] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"capturedAtPOI" number:48 type:12 subMessageClass:0];
  v61[47] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"capturedAtROI" number:49 type:12 subMessageClass:0];
  v61[48] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"capturedAtBusiness" number:50 type:12 subMessageClass:0];
  v61[49] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isCapturedAtPublicEvent" number:51 type:12 subMessageClass:0];
  v61[50] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isContainedInVisualTrend" number:52 type:12 subMessageClass:0];
  v61[51] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isContainedInActivity" number:53 type:12 subMessageClass:0];
  v61[52] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isContainedInChildActivity" number:54 type:12 subMessageClass:0];
  v61[53] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userLibraryAgeInDays" number:55 type:4 subMessageClass:0];
  v61[54] = v10;
  v11 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userisDAU" number:56 type:1 subMessageClass:0];
  v61[55] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:56];

  v12 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)columns
{
  v61[56] = *MEMORY[0x1E69E9840];
  v60 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v59 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userEvent" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v58 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"containsVIP" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v56 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"faceCount" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:2 convertedType:0];
  v57 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"containsPets" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v54 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"capturedAtHome" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v55 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"capturedAtWork" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v53 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"capturedAtFrequentLocation" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:12 convertedType:0];
  v52 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"capturedOnTrip" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:12 convertedType:0];
  v51 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"capturedOnShortTrip" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:12 convertedType:0];
  v50 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isDocument" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:12 convertedType:0];
  v49 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isMeme" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:12 convertedType:0];
  v48 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isScreenshot" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:12 convertedType:0];
  v47 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isFavorite" dataType:0 requestOnly:0 fieldNumber:14 protoDataType:12 convertedType:0];
  v46 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isCapturedOnWeekend" dataType:0 requestOnly:0 fieldNumber:15 protoDataType:12 convertedType:0];
  v45 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isCapturedAtPrivateEvent" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:12 convertedType:0];
  v44 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isCapturedOnHoliday" dataType:0 requestOnly:0 fieldNumber:17 protoDataType:12 convertedType:0];
  v43 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mediaType" dataType:0 requestOnly:0 fieldNumber:18 protoDataType:4 convertedType:0];
  v42 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"importSource" dataType:0 requestOnly:0 fieldNumber:19 protoDataType:4 convertedType:0];
  v41 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"assetAge" dataType:0 requestOnly:0 fieldNumber:20 protoDataType:4 convertedType:0];
  v40 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userLibrarySize" dataType:0 requestOnly:0 fieldNumber:21 protoDataType:4 convertedType:0];
  v39 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userNumTrips" dataType:0 requestOnly:0 fieldNumber:22 protoDataType:2 convertedType:0];
  v38 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userNumVIPPeople" dataType:0 requestOnly:0 fieldNumber:23 protoDataType:2 convertedType:0];
  v37 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userNumFavorites" dataType:0 requestOnly:0 fieldNumber:24 protoDataType:2 convertedType:0];
  v36 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userHasVIP" dataType:0 requestOnly:0 fieldNumber:25 protoDataType:12 convertedType:0];
  v35 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userHasHome" dataType:0 requestOnly:0 fieldNumber:26 protoDataType:12 convertedType:0];
  v34 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userHasPet" dataType:0 requestOnly:0 fieldNumber:27 protoDataType:12 convertedType:0];
  v33 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"containsBaby" dataType:0 requestOnly:0 fieldNumber:28 protoDataType:12 convertedType:0];
  v32 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"containsSocialGroup" dataType:0 requestOnly:0 fieldNumber:29 protoDataType:12 convertedType:0];
  v31 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"containsMyPet" dataType:0 requestOnly:0 fieldNumber:30 protoDataType:12 convertedType:0];
  v30 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"containsCoWorker" dataType:0 requestOnly:0 fieldNumber:31 protoDataType:12 convertedType:0];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"containsFamily" dataType:0 requestOnly:0 fieldNumber:32 protoDataType:12 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"containsFriends" dataType:0 requestOnly:0 fieldNumber:33 protoDataType:12 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"containsPartner" dataType:0 requestOnly:0 fieldNumber:34 protoDataType:12 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"containsParent" dataType:0 requestOnly:0 fieldNumber:35 protoDataType:12 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"containsSibling" dataType:0 requestOnly:0 fieldNumber:36 protoDataType:12 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"containsChild" dataType:0 requestOnly:0 fieldNumber:37 protoDataType:12 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isCoupon" dataType:0 requestOnly:0 fieldNumber:38 protoDataType:12 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isRecipe" dataType:0 requestOnly:0 fieldNumber:39 protoDataType:12 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isReceipt" dataType:0 requestOnly:0 fieldNumber:40 protoDataType:12 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isRecentView" dataType:0 requestOnly:0 fieldNumber:41 protoDataType:12 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isRecentEdit" dataType:0 requestOnly:0 fieldNumber:42 protoDataType:12 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isRecentShare" dataType:0 requestOnly:0 fieldNumber:43 protoDataType:12 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isRecentFavorite" dataType:0 requestOnly:0 fieldNumber:44 protoDataType:12 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isContainedInSharedAlbum" dataType:0 requestOnly:0 fieldNumber:45 protoDataType:12 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isContainedInOnThisDay" dataType:0 requestOnly:0 fieldNumber:46 protoDataType:12 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"capturedAtAOI" dataType:0 requestOnly:0 fieldNumber:47 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"capturedAtPOI" dataType:0 requestOnly:0 fieldNumber:48 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"capturedAtROI" dataType:0 requestOnly:0 fieldNumber:49 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"capturedAtBusiness" dataType:0 requestOnly:0 fieldNumber:50 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isCapturedAtPublicEvent" dataType:0 requestOnly:0 fieldNumber:51 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isContainedInVisualTrend" dataType:0 requestOnly:0 fieldNumber:52 protoDataType:12 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isContainedInActivity" dataType:0 requestOnly:0 fieldNumber:53 protoDataType:12 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isContainedInChildActivity" dataType:0 requestOnly:0 fieldNumber:54 protoDataType:12 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userLibraryAgeInDays" dataType:0 requestOnly:0 fieldNumber:55 protoDataType:4 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userisDAU" dataType:1 requestOnly:0 fieldNumber:56 protoDataType:1 convertedType:0];
  v61[0] = v60;
  v61[1] = v59;
  v61[2] = v58;
  v61[3] = v56;
  v61[4] = v57;
  v61[5] = v54;
  v61[6] = v55;
  v61[7] = v53;
  v61[8] = v52;
  v61[9] = v51;
  v61[10] = v50;
  v61[11] = v49;
  v61[12] = v48;
  v61[13] = v47;
  v61[14] = v46;
  v61[15] = v45;
  v61[16] = v44;
  v61[17] = v43;
  v61[18] = v42;
  v61[19] = v41;
  v61[20] = v40;
  v61[21] = v39;
  v61[22] = v38;
  v61[23] = v37;
  v61[24] = v36;
  v61[25] = v35;
  v61[26] = v34;
  v61[27] = v33;
  v61[28] = v32;
  v61[29] = v31;
  v61[30] = v30;
  v61[31] = v29;
  v61[32] = v28;
  v61[33] = v27;
  v61[34] = v26;
  v61[35] = v25;
  v61[36] = v24;
  v61[37] = v23;
  v61[38] = v22;
  v61[39] = v21;
  v61[40] = v20;
  v61[41] = v19;
  v61[42] = v18;
  v61[43] = v17;
  v61[44] = v16;
  v61[45] = v15;
  v61[46] = v2;
  v61[47] = v3;
  v61[48] = v4;
  v61[49] = v5;
  v61[50] = v6;
  v61[51] = v7;
  v61[52] = v8;
  v61[53] = v14;
  v61[54] = v13;
  v61[55] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:56];

  v10 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    v6 = a3;
    v7 = [[v5 alloc] initWithData:v6];

    v8 = [[BMPhotosUserAnalytics alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[28] = 0;
    }
  }

  return v4;
}

@end
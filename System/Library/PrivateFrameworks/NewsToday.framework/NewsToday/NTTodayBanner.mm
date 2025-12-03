@interface NTTodayBanner
- (NTTodayBanner)init;
- (NTTodayBanner)initWithCoder:(id)coder;
- (NTTodayBanner)initWithIdentifier:(id)identifier title:(id)title body:(id)body actionURL:(id)l actionButtonText:(id)text imageMethod:(unint64_t)method imageURL:(id)rL backgroundMethod:(unint64_t)self0 solidBackgroundColorPair:(id)self1 gradientBackgroundPair:(id)self2 numberOfAppearancesToHide:(unint64_t)self3 numberOfTapsToHide:(unint64_t)self4;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTTodayBanner

- (NTTodayBanner)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NTTodayBanner init]";
    v10 = 2080;
    v11 = "NTTodayResults.m";
    v12 = 1024;
    v13 = 20;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTTodayBanner init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NTTodayBanner)initWithIdentifier:(id)identifier title:(id)title body:(id)body actionURL:(id)l actionButtonText:(id)text imageMethod:(unint64_t)method imageURL:(id)rL backgroundMethod:(unint64_t)self0 solidBackgroundColorPair:(id)self1 gradientBackgroundPair:(id)self2 numberOfAppearancesToHide:(unint64_t)self3 numberOfTapsToHide:(unint64_t)self4
{
  identifierCopy = identifier;
  obj = title;
  titleCopy = title;
  bodyCopy = body;
  bodyCopy2 = body;
  lCopy = l;
  lCopy2 = l;
  textCopy = text;
  textCopy2 = text;
  rLCopy = rL;
  pairCopy = pair;
  backgroundPairCopy = backgroundPair;
  v36.receiver = self;
  v36.super_class = NTTodayBanner;
  v27 = [(NTTodayBanner *)&v36 init];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(&v27->_identifier, identifier);
    objc_storeStrong(&v28->_title, obj);
    objc_storeStrong(&v28->_body, bodyCopy);
    objc_storeStrong(&v28->_actionURL, lCopy);
    objc_storeStrong(&v28->_actionButtonText, textCopy);
    v28->_imageMethod = method;
    objc_storeStrong(&v28->_imageURL, rL);
    v28->_backgroundMethod = backgroundMethod;
    objc_storeStrong(&v28->_solidBackgroundColorPair, pair);
    objc_storeStrong(&v28->_gradientBackgroundPair, backgroundPair);
    v28->_numberOfAppearancesToHide = hide;
    v28->_numberOfTapsToHide = toHide;
  }

  return v28;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(NTTodayBanner *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  title = [(NTTodayBanner *)self title];

  if (title)
  {
    title2 = [(NTTodayBanner *)self title];
    [coderCopy encodeObject:title2 forKey:@"title"];
  }

  body = [(NTTodayBanner *)self body];

  if (body)
  {
    body2 = [(NTTodayBanner *)self body];
    [coderCopy encodeObject:body2 forKey:@"body"];
  }

  actionURL = [(NTTodayBanner *)self actionURL];

  if (actionURL)
  {
    actionURL2 = [(NTTodayBanner *)self actionURL];
    [coderCopy encodeObject:actionURL2 forKey:@"actionURL"];
  }

  actionButtonText = [(NTTodayBanner *)self actionButtonText];

  if (actionButtonText)
  {
    actionButtonText2 = [(NTTodayBanner *)self actionButtonText];
    [coderCopy encodeObject:actionButtonText2 forKey:@"actionButtonText"];
  }

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NTTodayBanner imageMethod](self, "imageMethod")}];
  [coderCopy encodeObject:v13 forKey:@"imageMethod"];

  imageURL = [(NTTodayBanner *)self imageURL];

  if (imageURL)
  {
    imageURL2 = [(NTTodayBanner *)self imageURL];
    [coderCopy encodeObject:imageURL2 forKey:@"imageURL"];
  }

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NTTodayBanner backgroundMethod](self, "backgroundMethod")}];
  [coderCopy encodeObject:v16 forKey:@"backgroundMethod"];

  solidBackgroundColorPair = [(NTTodayBanner *)self solidBackgroundColorPair];

  if (solidBackgroundColorPair)
  {
    solidBackgroundColorPair2 = [(NTTodayBanner *)self solidBackgroundColorPair];
    [coderCopy encodeObject:solidBackgroundColorPair2 forKey:@"solidBackgroundColorPair"];
  }

  gradientBackgroundPair = [(NTTodayBanner *)self gradientBackgroundPair];
  [coderCopy encodeObject:gradientBackgroundPair forKey:@"gradientBackgroundPair"];

  [coderCopy encodeInt64:-[NTTodayBanner numberOfAppearancesToHide](self forKey:{"numberOfAppearancesToHide"), @"numberOfAppearancesToHide"}];
  [coderCopy encodeInt64:-[NTTodayBanner numberOfTapsToHide](self forKey:{"numberOfTapsToHide"), @"numberOfTapToHide"}];
}

- (NTTodayBanner)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"body"];
  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionURL"];
  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionButtonText"];
  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageMethod"];
  intValue = [v24 intValue];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageURL"];
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backgroundMethod"];
  intValue2 = [v19 intValue];
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v18 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v18 forKey:@"solidBackgroundColorPair"];
  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"gradientBackgroundPair"];
  v14 = [coderCopy decodeInt64ForKey:@"numberOfAppearancesToHide"];
  v15 = [coderCopy decodeInt64ForKey:@"numberOfTapToHide"];

  v16 = [(NTTodayBanner *)self initWithIdentifier:v21 title:v25 body:v4 actionURL:v23 actionButtonText:v22 imageMethod:intValue imageURL:v5 backgroundMethod:intValue2 solidBackgroundColorPair:v9 gradientBackgroundPair:v13 numberOfAppearancesToHide:v14 numberOfTapsToHide:v15];
  return v16;
}

@end
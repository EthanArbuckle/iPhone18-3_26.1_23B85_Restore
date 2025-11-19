@interface NTTodayBanner
- (NTTodayBanner)init;
- (NTTodayBanner)initWithCoder:(id)a3;
- (NTTodayBanner)initWithIdentifier:(id)a3 title:(id)a4 body:(id)a5 actionURL:(id)a6 actionButtonText:(id)a7 imageMethod:(unint64_t)a8 imageURL:(id)a9 backgroundMethod:(unint64_t)a10 solidBackgroundColorPair:(id)a11 gradientBackgroundPair:(id)a12 numberOfAppearancesToHide:(unint64_t)a13 numberOfTapsToHide:(unint64_t)a14;
- (void)encodeWithCoder:(id)a3;
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

- (NTTodayBanner)initWithIdentifier:(id)a3 title:(id)a4 body:(id)a5 actionURL:(id)a6 actionButtonText:(id)a7 imageMethod:(unint64_t)a8 imageURL:(id)a9 backgroundMethod:(unint64_t)a10 solidBackgroundColorPair:(id)a11 gradientBackgroundPair:(id)a12 numberOfAppearancesToHide:(unint64_t)a13 numberOfTapsToHide:(unint64_t)a14
{
  v20 = a3;
  obj = a4;
  v21 = a4;
  v31 = a5;
  v22 = a5;
  v32 = a6;
  v35 = a6;
  v33 = a7;
  v23 = a7;
  v24 = a9;
  v25 = a11;
  v26 = a12;
  v36.receiver = self;
  v36.super_class = NTTodayBanner;
  v27 = [(NTTodayBanner *)&v36 init];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(&v27->_identifier, a3);
    objc_storeStrong(&v28->_title, obj);
    objc_storeStrong(&v28->_body, v31);
    objc_storeStrong(&v28->_actionURL, v32);
    objc_storeStrong(&v28->_actionButtonText, v33);
    v28->_imageMethod = a8;
    objc_storeStrong(&v28->_imageURL, a9);
    v28->_backgroundMethod = a10;
    objc_storeStrong(&v28->_solidBackgroundColorPair, a11);
    objc_storeStrong(&v28->_gradientBackgroundPair, a12);
    v28->_numberOfAppearancesToHide = a13;
    v28->_numberOfTapsToHide = a14;
  }

  return v28;
}

- (void)encodeWithCoder:(id)a3
{
  v20 = a3;
  v4 = [(NTTodayBanner *)self identifier];
  [v20 encodeObject:v4 forKey:@"identifier"];

  v5 = [(NTTodayBanner *)self title];

  if (v5)
  {
    v6 = [(NTTodayBanner *)self title];
    [v20 encodeObject:v6 forKey:@"title"];
  }

  v7 = [(NTTodayBanner *)self body];

  if (v7)
  {
    v8 = [(NTTodayBanner *)self body];
    [v20 encodeObject:v8 forKey:@"body"];
  }

  v9 = [(NTTodayBanner *)self actionURL];

  if (v9)
  {
    v10 = [(NTTodayBanner *)self actionURL];
    [v20 encodeObject:v10 forKey:@"actionURL"];
  }

  v11 = [(NTTodayBanner *)self actionButtonText];

  if (v11)
  {
    v12 = [(NTTodayBanner *)self actionButtonText];
    [v20 encodeObject:v12 forKey:@"actionButtonText"];
  }

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NTTodayBanner imageMethod](self, "imageMethod")}];
  [v20 encodeObject:v13 forKey:@"imageMethod"];

  v14 = [(NTTodayBanner *)self imageURL];

  if (v14)
  {
    v15 = [(NTTodayBanner *)self imageURL];
    [v20 encodeObject:v15 forKey:@"imageURL"];
  }

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NTTodayBanner backgroundMethod](self, "backgroundMethod")}];
  [v20 encodeObject:v16 forKey:@"backgroundMethod"];

  v17 = [(NTTodayBanner *)self solidBackgroundColorPair];

  if (v17)
  {
    v18 = [(NTTodayBanner *)self solidBackgroundColorPair];
    [v20 encodeObject:v18 forKey:@"solidBackgroundColorPair"];
  }

  v19 = [(NTTodayBanner *)self gradientBackgroundPair];
  [v20 encodeObject:v19 forKey:@"gradientBackgroundPair"];

  [v20 encodeInt64:-[NTTodayBanner numberOfAppearancesToHide](self forKey:{"numberOfAppearancesToHide"), @"numberOfAppearancesToHide"}];
  [v20 encodeInt64:-[NTTodayBanner numberOfTapsToHide](self forKey:{"numberOfTapsToHide"), @"numberOfTapToHide"}];
}

- (NTTodayBanner)initWithCoder:(id)a3
{
  v3 = a3;
  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v25 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"body"];
  v23 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"actionURL"];
  v22 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"actionButtonText"];
  v24 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"imageMethod"];
  v20 = [v24 intValue];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"imageURL"];
  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"backgroundMethod"];
  v6 = [v19 intValue];
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v18 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v9 = [v3 decodeObjectOfClasses:v18 forKey:@"solidBackgroundColorPair"];
  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [v3 decodeObjectOfClasses:v12 forKey:@"gradientBackgroundPair"];
  v14 = [v3 decodeInt64ForKey:@"numberOfAppearancesToHide"];
  v15 = [v3 decodeInt64ForKey:@"numberOfTapToHide"];

  v16 = [(NTTodayBanner *)self initWithIdentifier:v21 title:v25 body:v4 actionURL:v23 actionButtonText:v22 imageMethod:v20 imageURL:v5 backgroundMethod:v6 solidBackgroundColorPair:v9 gradientBackgroundPair:v13 numberOfAppearancesToHide:v14 numberOfTapsToHide:v15];
  return v16;
}

@end
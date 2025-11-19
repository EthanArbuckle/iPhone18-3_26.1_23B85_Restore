@interface CertUIItemDetail
+ (id)itemDetailWithDetailTitle:(id)a3 detail:(id)a4;
+ (id)itemDetailWithDetailTitle:(id)a3 detail:(id)a4 detailHighlightColor:(id)a5;
- (CertUIItemDetail)initWithDetailTitle:(id)a3 detail:(id)a4 detailHighlightColor:(id)a5 showCheckmarkView:(BOOL)a6 checkmarkText:(id)a7 checkmarkHighlightColor:(id)a8 showCheckmark:(BOOL)a9;
@end

@implementation CertUIItemDetail

+ (id)itemDetailWithDetailTitle:(id)a3 detail:(id)a4
{
  v5 = a4;
  v6 = a3;
  LOBYTE(v9) = 0;
  v7 = [[CertUIItemDetail alloc] initWithDetailTitle:v6 detail:v5 detailHighlightColor:0 showCheckmarkView:0 checkmarkText:0 checkmarkHighlightColor:0 showCheckmark:v9];

  return v7;
}

+ (id)itemDetailWithDetailTitle:(id)a3 detail:(id)a4 detailHighlightColor:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  LOBYTE(v12) = 0;
  v10 = [[CertUIItemDetail alloc] initWithDetailTitle:v9 detail:v8 detailHighlightColor:v7 showCheckmarkView:0 checkmarkText:0 checkmarkHighlightColor:0 showCheckmark:v12];

  return v10;
}

- (CertUIItemDetail)initWithDetailTitle:(id)a3 detail:(id)a4 detailHighlightColor:(id)a5 showCheckmarkView:(BOOL)a6 checkmarkText:(id)a7 checkmarkHighlightColor:(id)a8 showCheckmark:(BOOL)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v23 = a7;
  v18 = a8;
  v24.receiver = self;
  v24.super_class = CertUIItemDetail;
  v19 = [(CertUIItemDetail *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_detailTitle, a3);
    objc_storeStrong(&v20->_detail, a4);
    objc_storeStrong(&v20->_detailHighlightColor, a5);
    v20->_showCheckmarkView = a6;
    objc_storeStrong(&v20->_checkmarkText, a7);
    objc_storeStrong(&v20->_checkmarkHighlightColor, a8);
    v20->_showCheckmark = a9;
  }

  return v20;
}

@end
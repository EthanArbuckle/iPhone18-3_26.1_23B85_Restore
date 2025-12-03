@interface CertUIItemDetail
+ (id)itemDetailWithDetailTitle:(id)title detail:(id)detail;
+ (id)itemDetailWithDetailTitle:(id)title detail:(id)detail detailHighlightColor:(id)color;
- (CertUIItemDetail)initWithDetailTitle:(id)title detail:(id)detail detailHighlightColor:(id)color showCheckmarkView:(BOOL)view checkmarkText:(id)text checkmarkHighlightColor:(id)highlightColor showCheckmark:(BOOL)checkmark;
@end

@implementation CertUIItemDetail

+ (id)itemDetailWithDetailTitle:(id)title detail:(id)detail
{
  detailCopy = detail;
  titleCopy = title;
  LOBYTE(v9) = 0;
  v7 = [[CertUIItemDetail alloc] initWithDetailTitle:titleCopy detail:detailCopy detailHighlightColor:0 showCheckmarkView:0 checkmarkText:0 checkmarkHighlightColor:0 showCheckmark:v9];

  return v7;
}

+ (id)itemDetailWithDetailTitle:(id)title detail:(id)detail detailHighlightColor:(id)color
{
  colorCopy = color;
  detailCopy = detail;
  titleCopy = title;
  LOBYTE(v12) = 0;
  v10 = [[CertUIItemDetail alloc] initWithDetailTitle:titleCopy detail:detailCopy detailHighlightColor:colorCopy showCheckmarkView:0 checkmarkText:0 checkmarkHighlightColor:0 showCheckmark:v12];

  return v10;
}

- (CertUIItemDetail)initWithDetailTitle:(id)title detail:(id)detail detailHighlightColor:(id)color showCheckmarkView:(BOOL)view checkmarkText:(id)text checkmarkHighlightColor:(id)highlightColor showCheckmark:(BOOL)checkmark
{
  titleCopy = title;
  detailCopy = detail;
  colorCopy = color;
  textCopy = text;
  highlightColorCopy = highlightColor;
  v24.receiver = self;
  v24.super_class = CertUIItemDetail;
  v19 = [(CertUIItemDetail *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_detailTitle, title);
    objc_storeStrong(&v20->_detail, detail);
    objc_storeStrong(&v20->_detailHighlightColor, color);
    v20->_showCheckmarkView = view;
    objc_storeStrong(&v20->_checkmarkText, text);
    objc_storeStrong(&v20->_checkmarkHighlightColor, highlightColor);
    v20->_showCheckmark = checkmark;
  }

  return v20;
}

@end
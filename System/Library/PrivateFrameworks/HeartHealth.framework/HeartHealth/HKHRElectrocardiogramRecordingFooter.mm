@interface HKHRElectrocardiogramRecordingFooter
- (HKHRElectrocardiogramRecordingFooter)initWithText:(id)text link:(id)link url:(id)url;
@end

@implementation HKHRElectrocardiogramRecordingFooter

- (HKHRElectrocardiogramRecordingFooter)initWithText:(id)text link:(id)link url:(id)url
{
  textCopy = text;
  linkCopy = link;
  urlCopy = url;
  v19.receiver = self;
  v19.super_class = HKHRElectrocardiogramRecordingFooter;
  v11 = [(HKHRElectrocardiogramRecordingFooter *)&v19 init];
  if (v11)
  {
    v12 = [textCopy copy];
    footerText = v11->_footerText;
    v11->_footerText = v12;

    v14 = [linkCopy copy];
    footerLink = v11->_footerLink;
    v11->_footerLink = v14;

    v16 = [urlCopy copy];
    linkURL = v11->_linkURL;
    v11->_linkURL = v16;
  }

  return v11;
}

@end
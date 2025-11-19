@interface HKHRElectrocardiogramRecordingFooter
- (HKHRElectrocardiogramRecordingFooter)initWithText:(id)a3 link:(id)a4 url:(id)a5;
@end

@implementation HKHRElectrocardiogramRecordingFooter

- (HKHRElectrocardiogramRecordingFooter)initWithText:(id)a3 link:(id)a4 url:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = HKHRElectrocardiogramRecordingFooter;
  v11 = [(HKHRElectrocardiogramRecordingFooter *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    footerText = v11->_footerText;
    v11->_footerText = v12;

    v14 = [v9 copy];
    footerLink = v11->_footerLink;
    v11->_footerLink = v14;

    v16 = [v10 copy];
    linkURL = v11->_linkURL;
    v11->_linkURL = v16;
  }

  return v11;
}

@end
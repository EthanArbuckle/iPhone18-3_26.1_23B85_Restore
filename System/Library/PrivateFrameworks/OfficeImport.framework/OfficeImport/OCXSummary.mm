@interface OCXSummary
+ (void)readSummary:(id)summary package:(id)package;
@end

@implementation OCXSummary

+ (void)readSummary:(id)summary package:(id)package
{
  summaryCopy = summary;
  properties = [package properties];
  title = [properties title];
  [summaryCopy setTitle:title];

  creator = [properties creator];
  [summaryCopy setAuthor:creator];

  keywords = [properties keywords];
  [summaryCopy setKeywords:keywords];

  v9 = [properties description];
  [summaryCopy setComments:v9];
}

@end
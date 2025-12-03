@interface PDHeadersFooters
- (void)setFooter:(id)footer;
- (void)setHeader:(id)header;
- (void)setUserDateTime:(id)time;
@end

@implementation PDHeadersFooters

- (void)setUserDateTime:(id)time
{
  timeCopy = time;
  v4 = [timeCopy copy];
  mUserDateTime = self->mUserDateTime;
  self->mUserDateTime = v4;
}

- (void)setHeader:(id)header
{
  headerCopy = header;
  v4 = [headerCopy copy];
  mHeader = self->mHeader;
  self->mHeader = v4;
}

- (void)setFooter:(id)footer
{
  footerCopy = footer;
  v4 = [footerCopy copy];
  mFooter = self->mFooter;
  self->mFooter = v4;
}

@end
@interface PDHeadersFooters
- (void)setFooter:(id)a3;
- (void)setHeader:(id)a3;
- (void)setUserDateTime:(id)a3;
@end

@implementation PDHeadersFooters

- (void)setUserDateTime:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  mUserDateTime = self->mUserDateTime;
  self->mUserDateTime = v4;
}

- (void)setHeader:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  mHeader = self->mHeader;
  self->mHeader = v4;
}

- (void)setFooter:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  mFooter = self->mFooter;
  self->mFooter = v4;
}

@end
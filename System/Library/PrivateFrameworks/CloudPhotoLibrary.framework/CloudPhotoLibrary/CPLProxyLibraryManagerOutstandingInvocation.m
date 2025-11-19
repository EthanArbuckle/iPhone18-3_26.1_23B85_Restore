@interface CPLProxyLibraryManagerOutstandingInvocation
- (id)description;
@end

@implementation CPLProxyLibraryManagerOutstandingInvocation

- (id)description
{
  v2 = "";
  if (self->_didStart)
  {
    v3 = " didStart";
  }

  else
  {
    v3 = "";
  }

  v4 = " didProgress";
  if (self->_progress <= 0.0)
  {
    v4 = "";
  }

  if (self->_didFinish)
  {
    v2 = " didFinish";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"[outsanding%s%s%s]", v3, v4, v2];
}

@end
@interface CPLProxyLibraryManagerSyncOutstandingInvocation
- (id)description;
@end

@implementation CPLProxyLibraryManagerSyncOutstandingInvocation

- (id)description
{
  if (self->_didFinish)
  {
    v2 = " didFinish";
  }

  else
  {
    v2 = "";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"[outsanding%s]", v2];
}

@end
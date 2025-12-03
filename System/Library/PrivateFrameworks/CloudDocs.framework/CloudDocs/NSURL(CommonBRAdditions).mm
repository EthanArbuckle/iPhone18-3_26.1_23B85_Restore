@interface NSURL(CommonBRAdditions)
- (id)br_physicalURL;
@end

@implementation NSURL(CommonBRAdditions)

- (id)br_physicalURL
{
  if (_CFURLIsItemPromiseAtURL())
  {
    selfCopy = self;
  }

  else
  {
    v3 = _CFURLPromiseCopyPhysicalURL();
    v4 = v3;
    if (v3)
    {
      selfCopy2 = v3;
    }

    else
    {
      selfCopy2 = self;
    }

    selfCopy = selfCopy2;
  }

  return selfCopy;
}

@end
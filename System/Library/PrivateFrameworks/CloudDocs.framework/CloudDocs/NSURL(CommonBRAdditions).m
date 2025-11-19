@interface NSURL(CommonBRAdditions)
- (id)br_physicalURL;
@end

@implementation NSURL(CommonBRAdditions)

- (id)br_physicalURL
{
  if (_CFURLIsItemPromiseAtURL())
  {
    v2 = a1;
  }

  else
  {
    v3 = _CFURLPromiseCopyPhysicalURL();
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = a1;
    }

    v2 = v5;
  }

  return v2;
}

@end
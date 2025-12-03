@interface OITSULinkedPointerSetEnumerator
- (OITSULinkedPointerSetEnumerator)initWithFirstEntry:(id)entry;
- (id)nextObject;
@end

@implementation OITSULinkedPointerSetEnumerator

- (OITSULinkedPointerSetEnumerator)initWithFirstEntry:(id)entry
{
  v5.receiver = self;
  v5.super_class = OITSULinkedPointerSetEnumerator;
  result = [(OITSULinkedPointerSetEnumerator *)&v5 init];
  if (result)
  {
    result->mHead = entry;
    result->mLastUsed = 0;
  }

  return result;
}

- (id)nextObject
{
  mLastUsed = self->mLastUsed;
  if (mLastUsed)
  {
    mNext = mLastUsed->mNext;
    self->mLastUsed = mNext;
    if (mNext)
    {
      mObject = mNext->mObject;
      if (!mObject)
      {
        return mObject;
      }

LABEL_7:
      v6 = mObject;
      return mObject;
    }
  }

  mHead = self->mHead;
  if (!mHead)
  {
    return 0;
  }

  mObject = mHead->mObject;
  self->mLastUsed = mHead;
  self->mHead = 0;
  if (mObject)
  {
    goto LABEL_7;
  }

  return mObject;
}

@end
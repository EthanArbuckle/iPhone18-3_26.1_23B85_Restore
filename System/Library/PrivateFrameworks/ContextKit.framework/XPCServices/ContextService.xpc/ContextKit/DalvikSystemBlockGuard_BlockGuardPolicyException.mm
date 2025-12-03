@interface DalvikSystemBlockGuard_BlockGuardPolicyException
- (DalvikSystemBlockGuard_BlockGuardPolicyException)initWithInt:(int)int withInt:(int)withInt;
- (DalvikSystemBlockGuard_BlockGuardPolicyException)initWithInt:(int)int withInt:(int)withInt withNSString:(id)string;
- (id)getMessage;
- (void)dealloc;
@end

@implementation DalvikSystemBlockGuard_BlockGuardPolicyException

- (DalvikSystemBlockGuard_BlockGuardPolicyException)initWithInt:(int)int withInt:(int)withInt
{
  JavaLangRuntimeException_init(self, a2);
  *(&self->super.super.super.rawFrameCount + 1) = int;
  self->mPolicyState_ = withInt;
  JreStrongAssign(&self->mMessage_, 0);
  [(JavaLangThrowable *)self fillInStackTrace];
  return self;
}

- (DalvikSystemBlockGuard_BlockGuardPolicyException)initWithInt:(int)int withInt:(int)withInt withNSString:(id)string
{
  JavaLangRuntimeException_init(self, a2);
  *(&self->super.super.super.rawFrameCount + 1) = int;
  self->mPolicyState_ = withInt;
  JreStrongAssign(&self->mMessage_, string);
  [(JavaLangThrowable *)self fillInStackTrace];
  return self;
}

- (id)getMessage
{
  v8 = *(&self->super.super.super.rawFrameCount + 1);
  mPolicyState = self->mPolicyState_;
  if (self->mMessage_)
  {
    mMessage = self->mMessage_;
    JreStrcat("$$", a2, v2, v3, v4, v5, v6, v7, @" msg=");
  }

  return JreStrcat("$I$I$", a2, v2, v3, v4, v5, v6, v7, @"policy=");
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DalvikSystemBlockGuard_BlockGuardPolicyException;
  [(JavaLangThrowable *)&v3 dealloc];
}

@end
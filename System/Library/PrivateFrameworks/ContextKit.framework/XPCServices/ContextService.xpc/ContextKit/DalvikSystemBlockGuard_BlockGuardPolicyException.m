@interface DalvikSystemBlockGuard_BlockGuardPolicyException
- (DalvikSystemBlockGuard_BlockGuardPolicyException)initWithInt:(int)a3 withInt:(int)a4;
- (DalvikSystemBlockGuard_BlockGuardPolicyException)initWithInt:(int)a3 withInt:(int)a4 withNSString:(id)a5;
- (id)getMessage;
- (void)dealloc;
@end

@implementation DalvikSystemBlockGuard_BlockGuardPolicyException

- (DalvikSystemBlockGuard_BlockGuardPolicyException)initWithInt:(int)a3 withInt:(int)a4
{
  JavaLangRuntimeException_init(self, a2);
  *(&self->super.super.super.rawFrameCount + 1) = a3;
  self->mPolicyState_ = a4;
  JreStrongAssign(&self->mMessage_, 0);
  [(JavaLangThrowable *)self fillInStackTrace];
  return self;
}

- (DalvikSystemBlockGuard_BlockGuardPolicyException)initWithInt:(int)a3 withInt:(int)a4 withNSString:(id)a5
{
  JavaLangRuntimeException_init(self, a2);
  *(&self->super.super.super.rawFrameCount + 1) = a3;
  self->mPolicyState_ = a4;
  JreStrongAssign(&self->mMessage_, a5);
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
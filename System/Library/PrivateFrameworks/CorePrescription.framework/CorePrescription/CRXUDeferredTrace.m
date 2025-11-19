@interface CRXUDeferredTrace
+ (id)deferredTraceWithCode:(unint64_t)a3 arg1:(unint64_t)a4 arg2:(unint64_t)a5 arg3:(unint64_t)a6 arg4:(unint64_t)a7;
- (CRXUDeferredTrace)initWithCode:(unint64_t)a3 arg1:(unint64_t)a4 arg2:(unint64_t)a5 arg3:(unint64_t)a6 arg4:(unint64_t)a7;
- (void)dealloc;
@end

@implementation CRXUDeferredTrace

+ (id)deferredTraceWithCode:(unint64_t)a3 arg1:(unint64_t)a4 arg2:(unint64_t)a5 arg3:(unint64_t)a6 arg4:(unint64_t)a7
{
  v7 = [[a1 alloc] initWithCode:a3 arg1:a4 arg2:a5 arg3:a6 arg4:a7];

  return v7;
}

- (CRXUDeferredTrace)initWithCode:(unint64_t)a3 arg1:(unint64_t)a4 arg2:(unint64_t)a5 arg3:(unint64_t)a6 arg4:(unint64_t)a7
{
  v13.receiver = self;
  v13.super_class = CRXUDeferredTrace;
  result = [(CRXUDeferredTrace *)&v13 init];
  if (result)
  {
    result->_code = a3;
    result->_arg1 = a4;
    result->_arg2 = a5;
    result->_arg3 = a6;
    result->_arg4 = a7;
  }

  return result;
}

- (void)dealloc
{
  code_low = LODWORD(self->_code);
  arg1 = self->_arg1;
  arg2 = self->_arg2;
  arg3 = self->_arg3;
  arg4 = self->_arg4;
  kdebug_trace();
  v8.receiver = self;
  v8.super_class = CRXUDeferredTrace;
  [(CRXUDeferredTrace *)&v8 dealloc];
}

@end
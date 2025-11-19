@interface BPSPartialCompletion
+ (id)withState:(int64_t)a3;
+ (id)withState:(int64_t)a3 error:(id)a4;
+ (id)withState:(int64_t)a3 value:(id)a4;
- (BPSPartialCompletion)initWithState:(int64_t)a3 value:(id)a4 error:(id)a5;
@end

@implementation BPSPartialCompletion

- (BPSPartialCompletion)initWithState:(int64_t)a3 value:(id)a4 error:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = BPSPartialCompletion;
  v11 = [(BPSPartialCompletion *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_state = a3;
    objc_storeStrong(&v11->_value, a4);
    objc_storeStrong(&v12->_error, a5);
  }

  return v12;
}

+ (id)withState:(int64_t)a3 value:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithState:a3 value:v6 error:0];

  return v7;
}

+ (id)withState:(int64_t)a3 error:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithState:a3 value:0 error:v6];

  return v7;
}

+ (id)withState:(int64_t)a3
{
  v3 = [[a1 alloc] initWithState:a3 value:0 error:0];

  return v3;
}

@end
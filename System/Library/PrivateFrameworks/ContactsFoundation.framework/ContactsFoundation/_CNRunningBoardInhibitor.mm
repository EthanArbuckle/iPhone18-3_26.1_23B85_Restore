@interface _CNRunningBoardInhibitor
+ (id)os_log;
+ (id)runningBoardTarget;
- (_CNRunningBoardInhibitor)initWithExplanation:(id)a3;
- (id)description;
- (void)start;
- (void)stop;
@end

@implementation _CNRunningBoardInhibitor

+ (id)os_log
{
  if (os_log_cn_once_token_1_15 != -1)
  {
    +[_CNRunningBoardInhibitor os_log];
  }

  v3 = os_log_cn_once_object_1_15;

  return v3;
}

- (_CNRunningBoardInhibitor)initWithExplanation:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _CNRunningBoardInhibitor;
  v5 = [(_CNRunningBoardInhibitor *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    explanation = v5->_explanation;
    v5->_explanation = v6;

    v8 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"explanation" object:self->_explanation];
  v5 = [v3 appendName:@"assertion" object:self->_assertion];
  v6 = [v3 build];

  return v6;
}

- (void)start
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1859F0000, a2, OS_LOG_TYPE_ERROR, "Failed to take runningboard assertion, error: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)stop
{
  v4.receiver = self;
  v4.super_class = _CNRunningBoardInhibitor;
  [(CNInhibitor *)&v4 stop];
  v3 = [(_CNRunningBoardInhibitor *)self assertion];
  [v3 invalidate];

  [(_CNRunningBoardInhibitor *)self setAssertion:0];
}

+ (id)runningBoardTarget
{
  if (runningBoardTarget_cn_once_token_5 != -1)
  {
    +[_CNRunningBoardInhibitor runningBoardTarget];
  }

  v3 = runningBoardTarget_cn_once_object_5;

  return v3;
}

@end
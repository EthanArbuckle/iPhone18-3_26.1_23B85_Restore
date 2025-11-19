@interface MTTask
+ (id)taskWithIdentifier:(id)a3 delay:(double)a4 completableBlock:(id)a5;
- (id)description;
@end

@implementation MTTask

+ (id)taskWithIdentifier:(id)a3 delay:(double)a4 completableBlock:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = objc_opt_new();
  [v9 setIdentifier:v8];

  [v9 setDelay:a4];
  [v9 setCompletableBlock:v7];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MTTask *)self identifier];
  [(MTTask *)self delay];
  v7 = [v3 stringWithFormat:@"<%@:%p %@ delay:%f>", v4, self, v5, v6];

  return v7;
}

@end
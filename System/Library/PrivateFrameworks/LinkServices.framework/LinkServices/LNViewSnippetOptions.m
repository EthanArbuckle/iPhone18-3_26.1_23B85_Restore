@interface LNViewSnippetOptions
- (LNViewSnippetOptions)initWithCanReplacePrintableText:(BOOL)a3;
- (LNViewSnippetOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNViewSnippetOptions

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[LNViewSnippetOptions canReplacePrintableText](self forKey:{"canReplacePrintableText"), @"canReplacePrintableText"}];
}

- (LNViewSnippetOptions)initWithCoder:(id)a3
{
  v4 = [a3 decodeBoolForKey:@"canReplacePrintableText"];

  return [(LNViewSnippetOptions *)self initWithCanReplacePrintableText:v4];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(LNViewSnippetOptions *)self canReplacePrintableText];

  return [v4 initWithCanReplacePrintableText:v5];
}

- (LNViewSnippetOptions)initWithCanReplacePrintableText:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = LNViewSnippetOptions;
  v4 = [(LNViewSnippetOptions *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_canReplacePrintableText = a3;
    v6 = v4;
  }

  return v5;
}

@end
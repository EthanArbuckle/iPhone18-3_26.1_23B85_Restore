@interface OBPasscodeInputView
- (BOOL)becomeFirstResponder;
- (BOOL)isFirstResponder;
- (BOOL)resignFirstResponder;
- (CGSize)intrinsicContentSize;
- (OBPasscodeInputViewDelegate)delegate;
- (void)shake;
@end

@implementation OBPasscodeInputView

- (BOOL)becomeFirstResponder
{
  v2 = [(OBPasscodeInputView *)self passcodeField];
  v3 = [v2 becomeFirstResponder];

  return v3;
}

- (BOOL)isFirstResponder
{
  v2 = [(OBPasscodeInputView *)self passcodeField];
  v3 = [v2 isFirstResponder];

  return v3;
}

- (BOOL)resignFirstResponder
{
  v6.receiver = self;
  v6.super_class = OBPasscodeInputView;
  [(OBPasscodeInputView *)&v6 resignFirstResponder];
  v3 = [(OBPasscodeInputView *)self passcodeField];
  v4 = [v3 resignFirstResponder];

  return v4;
}

- (CGSize)intrinsicContentSize
{
  v2 = [(OBPasscodeInputView *)self passcodeField];
  [v2 frame];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)shake
{
  v2 = MEMORY[0x1E69794A8];
  v3 = self;
  v27 = [v2 animationWithKeyPath:@"position.x"];
  [v27 setMass:1.20000005];
  [v27 setStiffness:1200.0];
  [v27 setDamping:12.0];
  LODWORD(v4) = 1028389654;
  LODWORD(v5) = 990057071;
  LODWORD(v6) = 1059712716;
  LODWORD(v7) = 1.0;
  v8 = [MEMORY[0x1E69793D0] functionWithControlPoints:v4 :v5 :v6 :v7];
  [v27 setTimingFunction:v8];

  [v27 setDuration:0.666999996];
  [v27 setInitialVelocity:0.0];
  v9 = *MEMORY[0x1E69797D8];
  [v27 setFillMode:*MEMORY[0x1E69797D8]];
  v10 = MEMORY[0x1E696AD98];
  v11 = [(OBPasscodeInputView *)v3 layer];
  [v11 position];
  v13 = v12 + 75.0;
  *&v13 = v13;
  v14 = [v10 numberWithFloat:v13];
  [v27 setFromValue:v14];

  v15 = [(OBPasscodeInputView *)v3 layer];
  [v15 addAnimation:v27 forKey:@"spring"];

  v16 = [MEMORY[0x1E6979318] animationWithKeyPath:@"position.x"];
  LODWORD(v17) = 1054276898;
  LODWORD(v18) = 1058305108;
  LODWORD(v19) = 1.0;
  v20 = [MEMORY[0x1E69793D0] functionWithControlPoints:v17 :0.0 :v18 :v19];
  [v16 setTimingFunction:v20];

  [v16 setDuration:0.100000001];
  [v16 setFillMode:v9];
  v21 = MEMORY[0x1E696AD98];
  v22 = [(OBPasscodeInputView *)v3 layer];
  [v22 position];
  v24 = v23 + -75.0;
  *&v24 = v24;
  v25 = [v21 numberWithFloat:v24];
  [v16 setFromValue:v25];

  v26 = [(OBPasscodeInputView *)v3 layer];

  [v26 addAnimation:v16 forKey:@"force"];
}

- (OBPasscodeInputViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
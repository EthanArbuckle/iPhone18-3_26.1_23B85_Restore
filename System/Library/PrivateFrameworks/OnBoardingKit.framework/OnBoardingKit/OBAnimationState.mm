@interface OBAnimationState
- (NSString)darkName;
- (OBAnimationState)initWithStateName:(id)a3 darkStateName:(id)a4 transitionDuration:(double)a5 transitionSpeed:(double)a6;
- (OBAnimationState)initWithStateName:(id)a3 transitionDuration:(double)a4 transitionSpeed:(double)a5;
- (id)stateForLayer:(id)a3;
@end

@implementation OBAnimationState

- (OBAnimationState)initWithStateName:(id)a3 transitionDuration:(double)a4 transitionSpeed:(double)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = OBAnimationState;
  v9 = [(OBAnimationState *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_transitionDuration = a4;
    v11 = [v8 copy];
    name = v10->_name;
    v10->_name = v11;

    v10->_transitionSpeed = a5;
  }

  return v10;
}

- (OBAnimationState)initWithStateName:(id)a3 darkStateName:(id)a4 transitionDuration:(double)a5 transitionSpeed:(double)a6
{
  v11 = a4;
  v12 = [(OBAnimationState *)self initWithStateName:a3 transitionDuration:a5 transitionSpeed:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_darkName, a4);
  }

  return v13;
}

- (NSString)darkName
{
  darkName = self->_darkName;
  if (darkName)
  {
    v3 = darkName;
  }

  else
  {
    v3 = [(OBAnimationState *)self name];
  }

  return v3;
}

- (id)stateForLayer:(id)a3
{
  v4 = MEMORY[0x1E69DD1B8];
  v5 = a3;
  v6 = [v4 _currentTraitCollection];
  if ([v6 userInterfaceStyle] == 2)
  {
    [(OBAnimationState *)self darkName];
  }

  else
  {
    [(OBAnimationState *)self name];
  }
  v7 = ;

  v8 = [v5 stateWithName:v7];

  if (!v8)
  {
    v9 = _OBLoggingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(OBAnimationState *)self stateForLayer:v9];
    }
  }

  return v8;
}

- (void)stateForLayer:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 name];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1B4FB6000, a2, OS_LOG_TYPE_ERROR, "The layer does not contain a state with %@: Invalid state name", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end
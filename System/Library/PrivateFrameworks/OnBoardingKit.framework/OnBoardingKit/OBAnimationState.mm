@interface OBAnimationState
- (NSString)darkName;
- (OBAnimationState)initWithStateName:(id)name darkStateName:(id)stateName transitionDuration:(double)duration transitionSpeed:(double)speed;
- (OBAnimationState)initWithStateName:(id)name transitionDuration:(double)duration transitionSpeed:(double)speed;
- (id)stateForLayer:(id)layer;
@end

@implementation OBAnimationState

- (OBAnimationState)initWithStateName:(id)name transitionDuration:(double)duration transitionSpeed:(double)speed
{
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = OBAnimationState;
  v9 = [(OBAnimationState *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_transitionDuration = duration;
    v11 = [nameCopy copy];
    name = v10->_name;
    v10->_name = v11;

    v10->_transitionSpeed = speed;
  }

  return v10;
}

- (OBAnimationState)initWithStateName:(id)name darkStateName:(id)stateName transitionDuration:(double)duration transitionSpeed:(double)speed
{
  stateNameCopy = stateName;
  v12 = [(OBAnimationState *)self initWithStateName:name transitionDuration:duration transitionSpeed:speed];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_darkName, stateName);
  }

  return v13;
}

- (NSString)darkName
{
  darkName = self->_darkName;
  if (darkName)
  {
    name = darkName;
  }

  else
  {
    name = [(OBAnimationState *)self name];
  }

  return name;
}

- (id)stateForLayer:(id)layer
{
  v4 = MEMORY[0x1E69DD1B8];
  layerCopy = layer;
  _currentTraitCollection = [v4 _currentTraitCollection];
  if ([_currentTraitCollection userInterfaceStyle] == 2)
  {
    [(OBAnimationState *)self darkName];
  }

  else
  {
    [(OBAnimationState *)self name];
  }
  v7 = ;

  v8 = [layerCopy stateWithName:v7];

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
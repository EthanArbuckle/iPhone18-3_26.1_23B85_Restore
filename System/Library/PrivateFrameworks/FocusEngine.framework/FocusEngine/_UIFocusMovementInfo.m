@interface _UIFocusMovementInfo
+ (id)_movementWithHeading:(unint64_t)a3 isInitial:(BOOL)a4 fallbackMovementOriginatingFrame:(CGRect)a5;
- (CGRect)_fallbackMovementOriginatingFrame;
- (CGVector)_velocity;
- (NSString)description;
- (_UIFocusMovementInfo)init;
- (_UIFocusMovementInfo)initWithCoder:(id)a3;
- (_UIFocusMovementInfo)initWithHeading:(unint64_t)a3 linearHeading:(unint64_t)a4 isInitial:(BOOL)a5 shouldLoadScrollableContainer:(BOOL)a6 looping:(BOOL)a7 groupFilter:(int64_t)a8 inputType:(unint64_t)a9;
- (_UIFocusMovementInfo)initWithHeading:(unint64_t)a3 velocity:(CGVector)a4 isInitial:(BOOL)a5 shouldLoadScrollableContainer:(BOOL)a6 groupFilter:(int64_t)a7 inputType:(unint64_t)a8;
- (_UIFocusMovementInfo)initWithXPCDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation _UIFocusMovementInfo

+ (id)_movementWithHeading:(unint64_t)a3 isInitial:(BOOL)a4 fallbackMovementOriginatingFrame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = [[a1 alloc] initWithHeading:a3 linearHeading:0 isInitial:a4 shouldLoadScrollableContainer:1 looping:0 groupFilter:0 inputType:5];
  [v9 _setFallbackMovementOriginatingFrame:{x, y, width, height}];

  return v9;
}

- (_UIFocusMovementInfo)init
{
  v4.receiver = self;
  v4.super_class = _UIFocusMovementInfo;
  result = [(_UIFocusMovementInfo *)&v4 init];
  if (result)
  {
    result->_heading = 0;
    result->_linearHeading = 0;
    result->_velocity.dx = 0.0;
    result->_velocity.dy = 0.0;
    *&result->_looping = 65792;
    v3 = *(MEMORY[0x277CBF398] + 16);
    result->_fallbackMovementOriginatingFrame.origin = *MEMORY[0x277CBF398];
    result->_fallbackMovementOriginatingFrame.size = v3;
    result->_groupFilter = 0;
    result->_inputType = 0;
  }

  return result;
}

- (_UIFocusMovementInfo)initWithHeading:(unint64_t)a3 velocity:(CGVector)a4 isInitial:(BOOL)a5 shouldLoadScrollableContainer:(BOOL)a6 groupFilter:(int64_t)a7 inputType:(unint64_t)a8
{
  dy = a4.dy;
  dx = a4.dx;
  result = [(_UIFocusMovementInfo *)self init];
  if (result)
  {
    if (!a3)
    {
      v16 = fabs(dx);
      v17 = 8;
      v18 = 4;
      if (dx >= 0.0)
      {
        v18 = 0;
      }

      if (dx <= 0.0)
      {
        v17 = v18;
      }

      if (v16 >= 0.0001)
      {
        a3 = v17;
      }

      else
      {
        a3 = 0;
      }

      if (fabs(dy) >= 0.0001)
      {
        v19 = a3 | 1;
        if (dy >= 0.0)
        {
          v19 = a3;
        }

        if (dy > 0.0)
        {
          a3 |= 2uLL;
        }

        else
        {
          a3 = v19;
        }
      }
    }

    result->_heading = a3;
    result->_velocity.dx = dx;
    result->_velocity.dy = dy;
    result->_isVelocityBased = 1;
    result->_isInitialMovement = a5;
    result->_shouldLoadScrollableContainer = a6;
    result->_groupFilter = a7;
    result->_inputType = a8;
  }

  return result;
}

- (_UIFocusMovementInfo)initWithHeading:(unint64_t)a3 linearHeading:(unint64_t)a4 isInitial:(BOOL)a5 shouldLoadScrollableContainer:(BOOL)a6 looping:(BOOL)a7 groupFilter:(int64_t)a8 inputType:(unint64_t)a9
{
  v15 = [(_UIFocusMovementInfo *)self init];
  v16 = v15;
  if (v15)
  {
    v15->_heading = a3;
    v15->_linearHeading = a4;
    v15->_velocity.dx = _UIVectorForFocusHeading(a3);
    v16->_velocity.dy = v17;
    v16->_isVelocityBased = 0;
    v16->_isInitialMovement = a5;
    v16->_shouldLoadScrollableContainer = a6;
    v16->_looping = a7;
    v16->_groupFilter = a8;
    v16->_inputType = a9;
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [(CGSize *)v4 _setHeading:self->_heading];
  [(CGSize *)v4 _setLinearHeading:self->_linearHeading];
  [(CGSize *)v4 _setVelocity:self->_velocity.dx, self->_velocity.dy];
  [(CGSize *)v4 _setIsVelocityBased:self->_isVelocityBased];
  [(CGSize *)v4 _setIsInitialMovement:self->_isInitialMovement];
  [(CGSize *)v4 _setShouldLoadScrollableContainer:self->_shouldLoadScrollableContainer];
  [(CGSize *)v4 _setLooping:self->_looping];
  [(CGSize *)v4 _setGroupFilter:self->_groupFilter];
  [(CGSize *)v4 _setInputType:self->_inputType];
  size = self->_fallbackMovementOriginatingFrame.size;
  v4[4] = self->_fallbackMovementOriginatingFrame.origin;
  v4[5] = size;
  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = _UIStringFromFocusHeading([(_UIFocusMovementInfo *)self heading]);
  v7 = [v3 stringWithFormat:@"<%@ %p heading = %@>", v5, self, v6];;

  return v7;
}

- (_UIFocusMovementInfo)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _UIFocusMovementInfo;
  v5 = [(_UIFocusMovementInfo *)&v11 init];
  if (v5)
  {
    v5->_heading = xpc_dictionary_get_int64(v4, [@"FocusMovementHeadingKey" UTF8String]);
    v5->_linearHeading = xpc_dictionary_get_int64(v4, [@"FocusMovementLinearHeadingKey" UTF8String]);
    v5->_velocity.dx = xpc_dictionary_get_double(v4, [@"FocusMovementVelocityXKey" UTF8String]);
    v5->_velocity.dy = xpc_dictionary_get_double(v4, [@"FocusMovementVelocityYKey" UTF8String]);
    v5->_isVelocityBased = xpc_dictionary_get_BOOL(v4, [@"FocusMovementIsVelocityBasedKey" UTF8String]);
    v5->_isInitialMovement = xpc_dictionary_get_BOOL(v4, [@"FocusMovementIsInitialMovementKey" UTF8String]);
    v5->_shouldLoadScrollableContainer = xpc_dictionary_get_BOOL(v4, [@"FocusMovementShouldLoadScrollableContainerKey" UTF8String]);
    v5->_looping = xpc_dictionary_get_BOOL(v4, [@"FocusMovementLoopingKey" UTF8String]);
    v5->_groupFilter = xpc_dictionary_get_int64(v4, [@"FocusMovementGroupFilterKey" UTF8String]);
    v5->_inputType = xpc_dictionary_get_int64(v4, [@"FocusMovementInputTypeKey" UTF8String]);
    [@"FocusMovementFallbackOriginatingFrameKey" UTF8String];
    BSDeserializeCGRectFromXPCDictionaryWithKey();
    v5->_fallbackMovementOriginatingFrame.origin.x = v6;
    v5->_fallbackMovementOriginatingFrame.origin.y = v7;
    v5->_fallbackMovementOriginatingFrame.size.width = v8;
    v5->_fallbackMovementOriginatingFrame.size.height = v9;
  }

  return v5;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  xdict = a3;
  xpc_dictionary_set_int64(xdict, [@"FocusMovementHeadingKey" UTF8String], self->_heading);
  xpc_dictionary_set_int64(xdict, [@"FocusMovementLinearHeadingKey" UTF8String], self->_linearHeading);
  xpc_dictionary_set_double(xdict, [@"FocusMovementVelocityXKey" UTF8String], self->_velocity.dx);
  xpc_dictionary_set_double(xdict, [@"FocusMovementVelocityYKey" UTF8String], self->_velocity.dy);
  xpc_dictionary_set_BOOL(xdict, [@"FocusMovementIsVelocityBasedKey" UTF8String], self->_isVelocityBased);
  xpc_dictionary_set_BOOL(xdict, [@"FocusMovementIsInitialMovementKey" UTF8String], self->_isInitialMovement);
  xpc_dictionary_set_BOOL(xdict, [@"FocusMovementShouldLoadScrollableContainerKey" UTF8String], self->_shouldLoadScrollableContainer);
  xpc_dictionary_set_BOOL(xdict, [@"FocusMovementLoopingKey" UTF8String], self->_looping);
  xpc_dictionary_set_int64(xdict, [@"FocusMovementGroupFilterKey" UTF8String], self->_groupFilter);
  xpc_dictionary_set_int64(xdict, [@"FocusMovementInputTypeKey" UTF8String], self->_inputType);
  [@"FocusMovementFallbackOriginatingFrameKey" UTF8String];
  BSSerializeCGRectToXPCDictionaryWithKey();
}

- (_UIFocusMovementInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _UIFocusMovementInfo;
  v5 = [(_UIFocusMovementInfo *)&v13 init];
  if (v5)
  {
    v5->_heading = [v4 decodeIntegerForKey:@"FocusMovementHeadingKey"];
    v5->_linearHeading = [v4 decodeIntegerForKey:@"FocusMovementLinearHeadingKey"];
    [v4 decodeDoubleForKey:@"FocusMovementVelocityXKey"];
    v5->_velocity.dx = v6;
    [v4 decodeDoubleForKey:@"FocusMovementVelocityYKey"];
    v5->_velocity.dy = v7;
    v5->_isVelocityBased = [v4 decodeBoolForKey:@"FocusMovementIsVelocityBasedKey"];
    v5->_isInitialMovement = [v4 decodeBoolForKey:@"FocusMovementIsInitialMovementKey"];
    v5->_shouldLoadScrollableContainer = [v4 decodeBoolForKey:@"FocusMovementShouldLoadScrollableContainerKey"];
    v5->_looping = [v4 decodeBoolForKey:@"FocusMovementLoopingKey"];
    v5->_groupFilter = [v4 decodeIntegerForKey:@"FocusMovementGroupFilterKey"];
    v5->_inputType = [v4 decodeIntegerForKey:@"FocusMovementInputTypeKey"];
    [v4 decodeCGRectForKey:@"FocusMovementFallbackOriginatingFrameKey"];
    v5->_fallbackMovementOriginatingFrame.origin.x = v8;
    v5->_fallbackMovementOriginatingFrame.origin.y = v9;
    v5->_fallbackMovementOriginatingFrame.size.width = v10;
    v5->_fallbackMovementOriginatingFrame.size.height = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInteger:-[_UIFocusMovementInfo heading](self forKey:{"heading"), @"FocusMovementHeadingKey"}];
  [v5 encodeInteger:-[_UIFocusMovementInfo _linearHeading](self forKey:{"_linearHeading"), @"FocusMovementLinearHeadingKey"}];
  [(_UIFocusMovementInfo *)self _velocity];
  [v5 encodeDouble:@"FocusMovementVelocityXKey" forKey:?];
  [(_UIFocusMovementInfo *)self _velocity];
  [v5 encodeDouble:@"FocusMovementVelocityYKey" forKey:v4];
  [v5 encodeBool:-[_UIFocusMovementInfo _isVelocityBased](self forKey:{"_isVelocityBased"), @"FocusMovementIsVelocityBasedKey"}];
  [v5 encodeBool:-[_UIFocusMovementInfo _isInitialMovement](self forKey:{"_isInitialMovement"), @"FocusMovementIsInitialMovementKey"}];
  [v5 encodeBool:-[_UIFocusMovementInfo _shouldLoadScrollableContainer](self forKey:{"_shouldLoadScrollableContainer"), @"FocusMovementShouldLoadScrollableContainerKey"}];
  [v5 encodeBool:-[_UIFocusMovementInfo _isLooping](self forKey:{"_isLooping"), @"FocusMovementLoopingKey"}];
  [v5 encodeInteger:-[_UIFocusMovementInfo _groupFilter](self forKey:{"_groupFilter"), @"FocusMovementGroupFilterKey"}];
  [v5 encodeInteger:-[_UIFocusMovementInfo _inputType](self forKey:{"_inputType"), @"FocusMovementInputTypeKey"}];
  [(_UIFocusMovementInfo *)self _fallbackMovementOriginatingFrame];
  [v5 encodeCGRect:@"FocusMovementFallbackOriginatingFrameKey" forKey:?];
}

- (CGVector)_velocity
{
  dx = self->_velocity.dx;
  dy = self->_velocity.dy;
  result.dy = dy;
  result.dx = dx;
  return result;
}

- (CGRect)_fallbackMovementOriginatingFrame
{
  x = self->_fallbackMovementOriginatingFrame.origin.x;
  y = self->_fallbackMovementOriginatingFrame.origin.y;
  width = self->_fallbackMovementOriginatingFrame.size.width;
  height = self->_fallbackMovementOriginatingFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
@interface _UIFocusMovementInfo
+ (id)_movementWithHeading:(unint64_t)heading isInitial:(BOOL)initial fallbackMovementOriginatingFrame:(CGRect)frame;
- (CGRect)_fallbackMovementOriginatingFrame;
- (CGVector)_velocity;
- (NSString)description;
- (_UIFocusMovementInfo)init;
- (_UIFocusMovementInfo)initWithCoder:(id)coder;
- (_UIFocusMovementInfo)initWithHeading:(unint64_t)heading linearHeading:(unint64_t)linearHeading isInitial:(BOOL)initial shouldLoadScrollableContainer:(BOOL)container looping:(BOOL)looping groupFilter:(int64_t)filter inputType:(unint64_t)type;
- (_UIFocusMovementInfo)initWithHeading:(unint64_t)heading velocity:(CGVector)velocity isInitial:(BOOL)initial shouldLoadScrollableContainer:(BOOL)container groupFilter:(int64_t)filter inputType:(unint64_t)type;
- (_UIFocusMovementInfo)initWithXPCDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation _UIFocusMovementInfo

+ (id)_movementWithHeading:(unint64_t)heading isInitial:(BOOL)initial fallbackMovementOriginatingFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9 = [[self alloc] initWithHeading:heading linearHeading:0 isInitial:initial shouldLoadScrollableContainer:1 looping:0 groupFilter:0 inputType:5];
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

- (_UIFocusMovementInfo)initWithHeading:(unint64_t)heading velocity:(CGVector)velocity isInitial:(BOOL)initial shouldLoadScrollableContainer:(BOOL)container groupFilter:(int64_t)filter inputType:(unint64_t)type
{
  dy = velocity.dy;
  dx = velocity.dx;
  result = [(_UIFocusMovementInfo *)self init];
  if (result)
  {
    if (!heading)
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
        heading = v17;
      }

      else
      {
        heading = 0;
      }

      if (fabs(dy) >= 0.0001)
      {
        headingCopy = heading | 1;
        if (dy >= 0.0)
        {
          headingCopy = heading;
        }

        if (dy > 0.0)
        {
          heading |= 2uLL;
        }

        else
        {
          heading = headingCopy;
        }
      }
    }

    result->_heading = heading;
    result->_velocity.dx = dx;
    result->_velocity.dy = dy;
    result->_isVelocityBased = 1;
    result->_isInitialMovement = initial;
    result->_shouldLoadScrollableContainer = container;
    result->_groupFilter = filter;
    result->_inputType = type;
  }

  return result;
}

- (_UIFocusMovementInfo)initWithHeading:(unint64_t)heading linearHeading:(unint64_t)linearHeading isInitial:(BOOL)initial shouldLoadScrollableContainer:(BOOL)container looping:(BOOL)looping groupFilter:(int64_t)filter inputType:(unint64_t)type
{
  v15 = [(_UIFocusMovementInfo *)self init];
  v16 = v15;
  if (v15)
  {
    v15->_heading = heading;
    v15->_linearHeading = linearHeading;
    v15->_velocity.dx = _UIVectorForFocusHeading(heading);
    v16->_velocity.dy = v17;
    v16->_isVelocityBased = 0;
    v16->_isInitialMovement = initial;
    v16->_shouldLoadScrollableContainer = container;
    v16->_looping = looping;
    v16->_groupFilter = filter;
    v16->_inputType = type;
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (_UIFocusMovementInfo)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = _UIFocusMovementInfo;
  v5 = [(_UIFocusMovementInfo *)&v11 init];
  if (v5)
  {
    v5->_heading = xpc_dictionary_get_int64(dictionaryCopy, [@"FocusMovementHeadingKey" UTF8String]);
    v5->_linearHeading = xpc_dictionary_get_int64(dictionaryCopy, [@"FocusMovementLinearHeadingKey" UTF8String]);
    v5->_velocity.dx = xpc_dictionary_get_double(dictionaryCopy, [@"FocusMovementVelocityXKey" UTF8String]);
    v5->_velocity.dy = xpc_dictionary_get_double(dictionaryCopy, [@"FocusMovementVelocityYKey" UTF8String]);
    v5->_isVelocityBased = xpc_dictionary_get_BOOL(dictionaryCopy, [@"FocusMovementIsVelocityBasedKey" UTF8String]);
    v5->_isInitialMovement = xpc_dictionary_get_BOOL(dictionaryCopy, [@"FocusMovementIsInitialMovementKey" UTF8String]);
    v5->_shouldLoadScrollableContainer = xpc_dictionary_get_BOOL(dictionaryCopy, [@"FocusMovementShouldLoadScrollableContainerKey" UTF8String]);
    v5->_looping = xpc_dictionary_get_BOOL(dictionaryCopy, [@"FocusMovementLoopingKey" UTF8String]);
    v5->_groupFilter = xpc_dictionary_get_int64(dictionaryCopy, [@"FocusMovementGroupFilterKey" UTF8String]);
    v5->_inputType = xpc_dictionary_get_int64(dictionaryCopy, [@"FocusMovementInputTypeKey" UTF8String]);
    [@"FocusMovementFallbackOriginatingFrameKey" UTF8String];
    BSDeserializeCGRectFromXPCDictionaryWithKey();
    v5->_fallbackMovementOriginatingFrame.origin.x = v6;
    v5->_fallbackMovementOriginatingFrame.origin.y = v7;
    v5->_fallbackMovementOriginatingFrame.size.width = v8;
    v5->_fallbackMovementOriginatingFrame.size.height = v9;
  }

  return v5;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  xdict = dictionary;
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

- (_UIFocusMovementInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = _UIFocusMovementInfo;
  v5 = [(_UIFocusMovementInfo *)&v13 init];
  if (v5)
  {
    v5->_heading = [coderCopy decodeIntegerForKey:@"FocusMovementHeadingKey"];
    v5->_linearHeading = [coderCopy decodeIntegerForKey:@"FocusMovementLinearHeadingKey"];
    [coderCopy decodeDoubleForKey:@"FocusMovementVelocityXKey"];
    v5->_velocity.dx = v6;
    [coderCopy decodeDoubleForKey:@"FocusMovementVelocityYKey"];
    v5->_velocity.dy = v7;
    v5->_isVelocityBased = [coderCopy decodeBoolForKey:@"FocusMovementIsVelocityBasedKey"];
    v5->_isInitialMovement = [coderCopy decodeBoolForKey:@"FocusMovementIsInitialMovementKey"];
    v5->_shouldLoadScrollableContainer = [coderCopy decodeBoolForKey:@"FocusMovementShouldLoadScrollableContainerKey"];
    v5->_looping = [coderCopy decodeBoolForKey:@"FocusMovementLoopingKey"];
    v5->_groupFilter = [coderCopy decodeIntegerForKey:@"FocusMovementGroupFilterKey"];
    v5->_inputType = [coderCopy decodeIntegerForKey:@"FocusMovementInputTypeKey"];
    [coderCopy decodeCGRectForKey:@"FocusMovementFallbackOriginatingFrameKey"];
    v5->_fallbackMovementOriginatingFrame.origin.x = v8;
    v5->_fallbackMovementOriginatingFrame.origin.y = v9;
    v5->_fallbackMovementOriginatingFrame.size.width = v10;
    v5->_fallbackMovementOriginatingFrame.size.height = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[_UIFocusMovementInfo heading](self forKey:{"heading"), @"FocusMovementHeadingKey"}];
  [coderCopy encodeInteger:-[_UIFocusMovementInfo _linearHeading](self forKey:{"_linearHeading"), @"FocusMovementLinearHeadingKey"}];
  [(_UIFocusMovementInfo *)self _velocity];
  [coderCopy encodeDouble:@"FocusMovementVelocityXKey" forKey:?];
  [(_UIFocusMovementInfo *)self _velocity];
  [coderCopy encodeDouble:@"FocusMovementVelocityYKey" forKey:v4];
  [coderCopy encodeBool:-[_UIFocusMovementInfo _isVelocityBased](self forKey:{"_isVelocityBased"), @"FocusMovementIsVelocityBasedKey"}];
  [coderCopy encodeBool:-[_UIFocusMovementInfo _isInitialMovement](self forKey:{"_isInitialMovement"), @"FocusMovementIsInitialMovementKey"}];
  [coderCopy encodeBool:-[_UIFocusMovementInfo _shouldLoadScrollableContainer](self forKey:{"_shouldLoadScrollableContainer"), @"FocusMovementShouldLoadScrollableContainerKey"}];
  [coderCopy encodeBool:-[_UIFocusMovementInfo _isLooping](self forKey:{"_isLooping"), @"FocusMovementLoopingKey"}];
  [coderCopy encodeInteger:-[_UIFocusMovementInfo _groupFilter](self forKey:{"_groupFilter"), @"FocusMovementGroupFilterKey"}];
  [coderCopy encodeInteger:-[_UIFocusMovementInfo _inputType](self forKey:{"_inputType"), @"FocusMovementInputTypeKey"}];
  [(_UIFocusMovementInfo *)self _fallbackMovementOriginatingFrame];
  [coderCopy encodeCGRect:@"FocusMovementFallbackOriginatingFrameKey" forKey:?];
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
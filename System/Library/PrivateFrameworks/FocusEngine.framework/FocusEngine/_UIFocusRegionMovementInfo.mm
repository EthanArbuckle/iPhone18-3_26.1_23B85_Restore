@interface _UIFocusRegionMovementInfo
+ (id)_movementWithHeading:(unint64_t)heading linearHeading:(unint64_t)linearHeading originatingHeading:(unint64_t)originatingHeading isInitial:(BOOL)initial inputType:(unint64_t)type;
@end

@implementation _UIFocusRegionMovementInfo

+ (id)_movementWithHeading:(unint64_t)heading linearHeading:(unint64_t)linearHeading originatingHeading:(unint64_t)originatingHeading isInitial:(BOOL)initial inputType:(unint64_t)type
{
  v8 = [[self alloc] initWithHeading:heading linearHeading:linearHeading isInitial:initial shouldLoadScrollableContainer:1 looping:0 groupFilter:0 inputType:type];
  [v8 setOriginatingHeading:originatingHeading];

  return v8;
}

@end
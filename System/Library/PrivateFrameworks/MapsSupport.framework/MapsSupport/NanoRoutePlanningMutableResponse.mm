@interface NanoRoutePlanningMutableResponse
- (void)setObject:(id)object forUserInfoKey:(id)key forRouteID:(id)d;
@end

@implementation NanoRoutePlanningMutableResponse

- (void)setObject:(id)object forUserInfoKey:(id)key forRouteID:(id)d
{
  v5.receiver = self;
  v5.super_class = NanoRoutePlanningMutableResponse;
  [(NanoRoutePlanningResponse *)&v5 setObject:object forUserInfoKey:key forRouteID:d];
}

@end
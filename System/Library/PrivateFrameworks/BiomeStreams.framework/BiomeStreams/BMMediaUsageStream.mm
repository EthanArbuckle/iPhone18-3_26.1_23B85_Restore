@interface BMMediaUsageStream
- (id)source;
@end

@implementation BMMediaUsageStream

- (id)source
{
  v3 = [BMCoreDuetMediaUsageSource alloc];
  v4 = [(BMMediaUsageStream *)self identifier];
  v5 = [(BMCoreDuetMediaUsageSource *)v3 initWithIdentifier:v4];

  return v5;
}

@end
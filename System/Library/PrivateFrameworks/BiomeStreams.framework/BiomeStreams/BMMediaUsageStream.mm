@interface BMMediaUsageStream
- (id)source;
@end

@implementation BMMediaUsageStream

- (id)source
{
  v3 = [BMCoreDuetMediaUsageSource alloc];
  identifier = [(BMMediaUsageStream *)self identifier];
  v5 = [(BMCoreDuetMediaUsageSource *)v3 initWithIdentifier:identifier];

  return v5;
}

@end
@interface FPLoggerScope
- (id)adopt;
- (id)enter;
- (id)fork;
- (id)leave;
@end

@implementation FPLoggerScope

- (id)enter
{
  v3 = [FPPublicLog alloc];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"┏%llx", self->section];
  v5 = [(FPPublicLog *)v3 initWithString:v4];

  return v5;
}

- (id)leave
{
  v3 = [FPPublicLog alloc];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"┗%llx", self->section];
  v5 = [(FPPublicLog *)v3 initWithString:v4];

  return v5;
}

- (id)adopt
{
  v3 = [FPPublicLog alloc];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"┳%llx", self->section];
  v5 = [(FPPublicLog *)v3 initWithString:v4];

  return v5;
}

- (id)fork
{
  v3 = [FPPublicLog alloc];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"┣%llx", self->section];
  v5 = [(FPPublicLog *)v3 initWithString:v4];

  return v5;
}

@end
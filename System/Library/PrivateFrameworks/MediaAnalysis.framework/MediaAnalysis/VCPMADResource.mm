@interface VCPMADResource
- (id)description;
- (void)purge;
@end

@implementation VCPMADResource

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"active cost: %d, ", -[VCPMADResource activeCost](self, "activeCost")];
  [string appendFormat:@"inactive cost: %d>", -[VCPMADResource inactiveCost](self, "inactiveCost")];

  return string;
}

- (void)purge
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  v2 = 138412290;
  v3 = v1;
  _os_log_fault_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%@ does not implement purge", &v2, 0xCu);
}

@end
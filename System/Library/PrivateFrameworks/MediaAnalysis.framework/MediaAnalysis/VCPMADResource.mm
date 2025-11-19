@interface VCPMADResource
- (id)description;
- (void)purge;
@end

@implementation VCPMADResource

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"active cost: %d, ", -[VCPMADResource activeCost](self, "activeCost")];
  [v3 appendFormat:@"inactive cost: %d>", -[VCPMADResource inactiveCost](self, "inactiveCost")];

  return v3;
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
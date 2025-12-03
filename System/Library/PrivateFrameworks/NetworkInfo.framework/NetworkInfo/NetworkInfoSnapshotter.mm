@interface NetworkInfoSnapshotter
- (void)runWithWorkingDir:(NSString *)dir completionHandler:(id)handler;
@end

@implementation NetworkInfoSnapshotter

- (void)runWithWorkingDir:(NSString *)dir completionHandler:(id)handler
{
  MEMORY[0x277D82BE0](dir);
  v7 = _Block_copy(handler);
  MEMORY[0x277D82BE0](self);
  v4 = swift_allocObject();
  v4[2] = dir;
  v4[3] = v7;
  v4[4] = self;
  sub_25B8A2200(&unk_25B94A898, v4);
}

@end
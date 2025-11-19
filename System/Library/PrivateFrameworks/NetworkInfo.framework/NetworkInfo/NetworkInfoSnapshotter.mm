@interface NetworkInfoSnapshotter
- (void)runWithWorkingDir:(NSString *)a3 completionHandler:(id)a4;
@end

@implementation NetworkInfoSnapshotter

- (void)runWithWorkingDir:(NSString *)a3 completionHandler:(id)a4
{
  MEMORY[0x277D82BE0](a3);
  v7 = _Block_copy(a4);
  MEMORY[0x277D82BE0](self);
  v4 = swift_allocObject();
  v4[2] = a3;
  v4[3] = v7;
  v4[4] = self;
  sub_25B8A2200(&unk_25B94A898, v4);
}

@end
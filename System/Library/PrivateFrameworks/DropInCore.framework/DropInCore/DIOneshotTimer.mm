@interface DIOneshotTimer
- (DIOneshotTimer)initWithInterval:(double)a3 queue:(id)a4 identifier:(id)a5 label:(id)a6 handler:(id)a7;
- (NSString)description;
- (void)cancelTimer;
@end

@implementation DIOneshotTimer

- (NSString)description
{
  v2 = self;
  sub_249E6BB34();

  v3 = sub_249E7AA88();

  return v3;
}

- (DIOneshotTimer)initWithInterval:(double)a3 queue:(id)a4 identifier:(id)a5 label:(id)a6 handler:(id)a7
{
  v10 = sub_249E7A628();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(a7);
  sub_249E7A608();
  v15 = sub_249E7AAA8();
  v17 = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  v19 = a4;
  return OneshotTimer.init(timeInterval:queue:identifier:label:timerFiredHandler:)(a4, v13, v15, v17, sub_249E6C80C, v18, a3);
}

- (void)cancelTimer
{
  v2 = self;
  sub_249E6B770();
}

@end
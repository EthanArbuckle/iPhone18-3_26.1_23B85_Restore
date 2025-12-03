@interface DIOneshotTimer
- (DIOneshotTimer)initWithInterval:(double)interval queue:(id)queue identifier:(id)identifier label:(id)label handler:(id)handler;
- (NSString)description;
- (void)cancelTimer;
@end

@implementation DIOneshotTimer

- (NSString)description
{
  selfCopy = self;
  sub_249E6BB34();

  v3 = sub_249E7AA88();

  return v3;
}

- (DIOneshotTimer)initWithInterval:(double)interval queue:(id)queue identifier:(id)identifier label:(id)label handler:(id)handler
{
  v10 = sub_249E7A628();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(handler);
  sub_249E7A608();
  v15 = sub_249E7AAA8();
  v17 = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  queueCopy = queue;
  return OneshotTimer.init(timeInterval:queue:identifier:label:timerFiredHandler:)(queue, v13, v15, v17, sub_249E6C80C, v18, interval);
}

- (void)cancelTimer
{
  selfCopy = self;
  sub_249E6B770();
}

@end
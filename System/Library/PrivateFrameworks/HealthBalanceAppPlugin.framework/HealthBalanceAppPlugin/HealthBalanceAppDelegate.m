@interface HealthBalanceAppDelegate
- (_TtC22HealthBalanceAppPlugin24HealthBalanceAppDelegate)init;
- (void)open:(id)a3;
- (void)userNotificationCenter:(UNUserNotificationCenter *)a3 didReceiveNotificationResponse:(UNNotificationResponse *)a4 withCompletionHandler:(id)a5;
@end

@implementation HealthBalanceAppDelegate

- (_TtC22HealthBalanceAppPlugin24HealthBalanceAppDelegate)init
{
  sub_251384B94();
  v4.receiver = self;
  v4.super_class = type metadata accessor for HealthBalanceAppDelegate();
  return [(HealthBalanceAppDelegate *)&v4 init];
}

- (void)open:(id)a3
{
  v3 = sub_251384A34();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251384A14();
  (*(v4 + 8))(v7, v3);
}

- (void)userNotificationCenter:(UNUserNotificationCenter *)a3 didReceiveNotificationResponse:(UNNotificationResponse *)a4 withCompletionHandler:(id)a5
{
  sub_251371984(0, &qword_27F42C9B8, MEMORY[0x277D85720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_251385F94();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2513889D0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_2513889E0;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_251370D90(0, 0, v12, &unk_2513889F0, v17);
}

@end
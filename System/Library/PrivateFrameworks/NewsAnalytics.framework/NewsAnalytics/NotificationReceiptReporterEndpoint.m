@interface NotificationReceiptReporterEndpoint
- (NSString)name;
- (NSURL)url;
- (id)endpointURLWithContentType:(int64_t)a3;
@end

@implementation NotificationReceiptReporterEndpoint

- (NSString)name
{
  v2 = *(self + 2);
  v3 = *(self + 3);

  v4 = sub_217D8951C();

  return v4;
}

- (NSURL)url
{
  v3 = sub_217D87BAC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC13NewsAnalyticsP33_73410A717757B42F2A6F1BC37191285735NotificationReceiptReporterEndpoint_notificationReceiptURL, v3);
  v8 = sub_217D87B7C();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (id)endpointURLWithContentType:(int64_t)a3
{
  sub_217A520D0(0, &qword_2811C8CA0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  if (a3 >= 8)
  {
    v14 = sub_217D87BAC();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
    v13 = 0;
  }

  else
  {
    v9 = *off_278232AA0[a3];
    v10 = sub_217D87BAC();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v8, self + v9, v10);
    sub_217D87BAC();
    (*(v11 + 56))(v8, 0, 1, v10);
    v12 = sub_217D87B7C();
    (*(v11 + 8))(v8, v10);
    v13 = v12;
  }

  return v13;
}

@end
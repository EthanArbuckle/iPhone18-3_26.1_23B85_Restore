@interface NPKAnalyticsReporter
+ (BOOL)isSessionStartedFor:(id)a3;
+ (OS_dispatch_queue)queue;
+ (id)sessionTokenFor:(id)a3;
+ (void)beginSubject:(id)a3;
+ (void)beginSubject:(id)a3 closePreviousSession:(BOOL)a4;
+ (void)beginSubject:(id)a3 sessionToken:(id)a4;
+ (void)beginSubject:(id)a3 sessionToken:(id)a4 closePreviousSession:(BOOL)a5;
+ (void)endSubject:(id)a3;
+ (void)sendToSubject:(id)a3 event:(id)a4;
+ (void)sendToSubject:(id)a3 event:(id)a4 category:(int64_t)a5;
+ (void)sendToSubjects:(id)a3 event:(id)a4;
+ (void)sendToSubjects:(id)a3 event:(id)a4 category:(int64_t)a5;
+ (void)sendWithSingularEvent:(id)a3;
- (NPKAnalyticsReporter)init;
@end

@implementation NPKAnalyticsReporter

+ (OS_dispatch_queue)queue
{
  if (qword_27FA45750 != -1)
  {
    swift_once();
  }

  v3 = qword_27FA45758;

  return v3;
}

+ (void)beginSubject:(id)a3
{
  v3 = a3;
  _s11NanoPassKit17AnalyticsReporterC5begin_12sessionToken20closePreviousSessionySo18PKAnalyticsSubjecta_10Foundation4DataVSbtFZ_0(v3, 0, 0xF000000000000000, 1);
}

+ (void)beginSubject:(id)a3 closePreviousSession:(BOOL)a4
{
  v5 = a3;
  _s11NanoPassKit17AnalyticsReporterC5begin_12sessionToken20closePreviousSessionySo18PKAnalyticsSubjecta_10Foundation4DataVSbtFZ_0(v5, 0, 0xF000000000000000, a4);
}

+ (void)beginSubject:(id)a3 sessionToken:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = sub_25B55AC3C();
  v8 = v7;

  _s11NanoPassKit17AnalyticsReporterC5begin_12sessionToken20closePreviousSessionySo18PKAnalyticsSubjecta_10Foundation4DataVSbtFZ_0(v9, v6, v8, 1);
  sub_25B554148(v6, v8);
}

+ (void)beginSubject:(id)a3 sessionToken:(id)a4 closePreviousSession:(BOOL)a5
{
  v11 = a3;
  v7 = a4;
  v8 = sub_25B55AC3C();
  v10 = v9;

  _s11NanoPassKit17AnalyticsReporterC5begin_12sessionToken20closePreviousSessionySo18PKAnalyticsSubjecta_10Foundation4DataVSbtFZ_0(v11, v8, v10, a5);
  sub_25B554148(v8, v10);
}

+ (void)endSubject:(id)a3
{
  v3 = a3;
  _s11NanoPassKit17AnalyticsReporterC3endyySo18PKAnalyticsSubjectaFZ_0(v3);
}

+ (BOOL)isSessionStartedFor:(id)a3
{
  v3 = [objc_opt_self() reporterForSubject_];
  v4 = v3;
  if (v3)
  {
  }

  return v4 != 0;
}

+ (void)sendToSubject:(id)a3 event:(id)a4
{
  type metadata accessor for PKAnalyticsKey(0);
  sub_25B558DD4(&qword_27FA44D88, type metadata accessor for PKAnalyticsKey);
  v5 = sub_25B55ACCC();
  v6 = a3;
  _s11NanoPassKit17AnalyticsReporterC4send_5eventySo18PKAnalyticsSubjecta_SDySo0H3KeyaSSGtFZ_0(v6, v5);
}

+ (void)sendToSubject:(id)a3 event:(id)a4 category:(int64_t)a5
{
  type metadata accessor for PKAnalyticsKey(0);
  sub_25B558DD4(&qword_27FA44D88, type metadata accessor for PKAnalyticsKey);
  v7 = sub_25B55ACCC();
  v8 = a3;
  _s11NanoPassKit17AnalyticsReporterC4send_5event8categoryySo18PKAnalyticsSubjecta_SDySo0I3KeyaSSGSo0I8CategoryatFZ_0(v8, v7, a5);
}

+ (void)sendToSubjects:(id)a3 event:(id)a4
{
  type metadata accessor for PKAnalyticsSubject(0);
  v4 = sub_25B55AD6C();
  type metadata accessor for PKAnalyticsKey(0);
  sub_25B558DD4(&qword_27FA44D88, type metadata accessor for PKAnalyticsKey);
  v5 = sub_25B55ACCC();
  _s11NanoPassKit17AnalyticsReporterC4send_5eventySaySo18PKAnalyticsSubjectaG_SDySo0H3KeyaSSGtFZ_0(v4, v5);
}

+ (void)sendToSubjects:(id)a3 event:(id)a4 category:(int64_t)a5
{
  type metadata accessor for PKAnalyticsSubject(0);
  v6 = sub_25B55AD6C();
  type metadata accessor for PKAnalyticsKey(0);
  sub_25B558DD4(&qword_27FA44D88, type metadata accessor for PKAnalyticsKey);
  v7 = sub_25B55ACCC();
  _s11NanoPassKit17AnalyticsReporterC4send_5event8categoryySaySo18PKAnalyticsSubjectaG_SDySo0I3KeyaSSGSo0I8CategoryatFZ_0(v6, v7, a5);
}

+ (void)sendWithSingularEvent:(id)a3
{
  type metadata accessor for PKAnalyticsKey(0);
  sub_25B558DD4(&qword_27FA44D88, type metadata accessor for PKAnalyticsKey);
  v3 = sub_25B55ACCC();
  _s11NanoPassKit17AnalyticsReporterC4send13singularEventySDySo14PKAnalyticsKeyaSSG_tFZ_0(v3);
}

+ (id)sessionTokenFor:(id)a3
{
  v4 = objc_opt_self();
  v5 = a3;
  v6 = [v4 archivedSessionTokenForSubject_];
  if (v6)
  {
    v7 = v6;
    v8 = sub_25B55AC3C();
    v10 = v9;

    v11 = sub_25B55AC2C();
    sub_25B554148(v8, v10);
  }

  else
  {

    v11 = 0;
  }

  return v11;
}

- (NPKAnalyticsReporter)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AnalyticsReporter();
  return [(NPKAnalyticsReporter *)&v3 init];
}

@end
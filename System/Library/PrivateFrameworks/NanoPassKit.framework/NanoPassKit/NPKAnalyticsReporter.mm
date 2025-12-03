@interface NPKAnalyticsReporter
+ (BOOL)isSessionStartedFor:(id)for;
+ (OS_dispatch_queue)queue;
+ (id)sessionTokenFor:(id)for;
+ (void)beginSubject:(id)subject;
+ (void)beginSubject:(id)subject closePreviousSession:(BOOL)session;
+ (void)beginSubject:(id)subject sessionToken:(id)token;
+ (void)beginSubject:(id)subject sessionToken:(id)token closePreviousSession:(BOOL)session;
+ (void)endSubject:(id)subject;
+ (void)sendToSubject:(id)subject event:(id)event;
+ (void)sendToSubject:(id)subject event:(id)event category:(int64_t)category;
+ (void)sendToSubjects:(id)subjects event:(id)event;
+ (void)sendToSubjects:(id)subjects event:(id)event category:(int64_t)category;
+ (void)sendWithSingularEvent:(id)event;
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

+ (void)beginSubject:(id)subject
{
  subjectCopy = subject;
  _s11NanoPassKit17AnalyticsReporterC5begin_12sessionToken20closePreviousSessionySo18PKAnalyticsSubjecta_10Foundation4DataVSbtFZ_0(subjectCopy, 0, 0xF000000000000000, 1);
}

+ (void)beginSubject:(id)subject closePreviousSession:(BOOL)session
{
  subjectCopy = subject;
  _s11NanoPassKit17AnalyticsReporterC5begin_12sessionToken20closePreviousSessionySo18PKAnalyticsSubjecta_10Foundation4DataVSbtFZ_0(subjectCopy, 0, 0xF000000000000000, session);
}

+ (void)beginSubject:(id)subject sessionToken:(id)token
{
  subjectCopy = subject;
  tokenCopy = token;
  v6 = sub_25B55AC3C();
  v8 = v7;

  _s11NanoPassKit17AnalyticsReporterC5begin_12sessionToken20closePreviousSessionySo18PKAnalyticsSubjecta_10Foundation4DataVSbtFZ_0(subjectCopy, v6, v8, 1);
  sub_25B554148(v6, v8);
}

+ (void)beginSubject:(id)subject sessionToken:(id)token closePreviousSession:(BOOL)session
{
  subjectCopy = subject;
  tokenCopy = token;
  v8 = sub_25B55AC3C();
  v10 = v9;

  _s11NanoPassKit17AnalyticsReporterC5begin_12sessionToken20closePreviousSessionySo18PKAnalyticsSubjecta_10Foundation4DataVSbtFZ_0(subjectCopy, v8, v10, session);
  sub_25B554148(v8, v10);
}

+ (void)endSubject:(id)subject
{
  subjectCopy = subject;
  _s11NanoPassKit17AnalyticsReporterC3endyySo18PKAnalyticsSubjectaFZ_0(subjectCopy);
}

+ (BOOL)isSessionStartedFor:(id)for
{
  reporterForSubject_ = [objc_opt_self() reporterForSubject_];
  v4 = reporterForSubject_;
  if (reporterForSubject_)
  {
  }

  return v4 != 0;
}

+ (void)sendToSubject:(id)subject event:(id)event
{
  type metadata accessor for PKAnalyticsKey(0);
  sub_25B558DD4(&qword_27FA44D88, type metadata accessor for PKAnalyticsKey);
  v5 = sub_25B55ACCC();
  subjectCopy = subject;
  _s11NanoPassKit17AnalyticsReporterC4send_5eventySo18PKAnalyticsSubjecta_SDySo0H3KeyaSSGtFZ_0(subjectCopy, v5);
}

+ (void)sendToSubject:(id)subject event:(id)event category:(int64_t)category
{
  type metadata accessor for PKAnalyticsKey(0);
  sub_25B558DD4(&qword_27FA44D88, type metadata accessor for PKAnalyticsKey);
  v7 = sub_25B55ACCC();
  subjectCopy = subject;
  _s11NanoPassKit17AnalyticsReporterC4send_5event8categoryySo18PKAnalyticsSubjecta_SDySo0I3KeyaSSGSo0I8CategoryatFZ_0(subjectCopy, v7, category);
}

+ (void)sendToSubjects:(id)subjects event:(id)event
{
  type metadata accessor for PKAnalyticsSubject(0);
  v4 = sub_25B55AD6C();
  type metadata accessor for PKAnalyticsKey(0);
  sub_25B558DD4(&qword_27FA44D88, type metadata accessor for PKAnalyticsKey);
  v5 = sub_25B55ACCC();
  _s11NanoPassKit17AnalyticsReporterC4send_5eventySaySo18PKAnalyticsSubjectaG_SDySo0H3KeyaSSGtFZ_0(v4, v5);
}

+ (void)sendToSubjects:(id)subjects event:(id)event category:(int64_t)category
{
  type metadata accessor for PKAnalyticsSubject(0);
  v6 = sub_25B55AD6C();
  type metadata accessor for PKAnalyticsKey(0);
  sub_25B558DD4(&qword_27FA44D88, type metadata accessor for PKAnalyticsKey);
  v7 = sub_25B55ACCC();
  _s11NanoPassKit17AnalyticsReporterC4send_5event8categoryySaySo18PKAnalyticsSubjectaG_SDySo0I3KeyaSSGSo0I8CategoryatFZ_0(v6, v7, category);
}

+ (void)sendWithSingularEvent:(id)event
{
  type metadata accessor for PKAnalyticsKey(0);
  sub_25B558DD4(&qword_27FA44D88, type metadata accessor for PKAnalyticsKey);
  v3 = sub_25B55ACCC();
  _s11NanoPassKit17AnalyticsReporterC4send13singularEventySDySo14PKAnalyticsKeyaSSG_tFZ_0(v3);
}

+ (id)sessionTokenFor:(id)for
{
  v4 = objc_opt_self();
  forCopy = for;
  archivedSessionTokenForSubject_ = [v4 archivedSessionTokenForSubject_];
  if (archivedSessionTokenForSubject_)
  {
    v7 = archivedSessionTokenForSubject_;
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
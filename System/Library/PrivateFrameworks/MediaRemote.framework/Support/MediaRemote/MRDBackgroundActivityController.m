@interface MRDBackgroundActivityController
+ (id)controllerForBackgroundActivityIdentifier:(id)a3;
- (MRDBackgroundActivityController)initWithBackgroundActivityIdentifier:(id)a3;
- (void)dealloc;
- (void)handleUserInteractionsWithBlock:(id)a3;
- (void)publishNewData;
- (void)setIsBackgroundActivityActive:(BOOL)a3;
- (void)setShouldShowInForeground:(BOOL)a3;
@end

@implementation MRDBackgroundActivityController

+ (id)controllerForBackgroundActivityIdentifier:(id)a3
{
  v4 = a3;
  if (qword_1005292D8 != -1)
  {
    sub_1003A6A18();
  }

  v5 = [qword_1005292E0 objectForKeyedSubscript:v4];
  v6 = v5;
  if (v4 && !v5)
  {
    v6 = [[a1 alloc] initWithBackgroundActivityIdentifier:v4];
    [qword_1005292E0 setObject:v6 forKeyedSubscript:v4];
  }

  return v6;
}

- (MRDBackgroundActivityController)initWithBackgroundActivityIdentifier:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MRDBackgroundActivityController;
  v5 = [(MRDBackgroundActivityController *)&v14 init];
  if (v5)
  {
    v6 = [v4 copy];
    backgroundActivityIdentifier = v5->_backgroundActivityIdentifier;
    v5->_backgroundActivityIdentifier = v6;

    v8 = objc_alloc_init(STBackgroundActivitiesStatusDomainPublisher);
    publisher = v5->_publisher;
    v5->_publisher = v8;

    v5->_shouldShowInForeground = 1;
    v10 = v5->_publisher;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000AF7F0;
    v12[3] = &unk_1004BA408;
    v13 = v5;
    [(STBackgroundActivitiesStatusDomainPublisher *)v10 handleUserInteractionsWithBlock:v12];
  }

  return v5;
}

- (void)dealloc
{
  [(STBackgroundActivitiesStatusDomainPublisher *)self->_publisher invalidate];
  v3.receiver = self;
  v3.super_class = MRDBackgroundActivityController;
  [(MRDBackgroundActivityController *)&v3 dealloc];
}

- (void)setShouldShowInForeground:(BOOL)a3
{
  if (self->_shouldShowInForeground != a3)
  {
    self->_shouldShowInForeground = a3;
    [(MRDBackgroundActivityController *)self publishNewData];
  }
}

- (void)setIsBackgroundActivityActive:(BOOL)a3
{
  if (self->_backgroundActivityActive != a3)
  {
    self->_backgroundActivityActive = a3;
    [(MRDBackgroundActivityController *)self publishNewData];
  }
}

- (void)handleUserInteractionsWithBlock:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  publisher = self->_publisher;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000AFA48;
  v7[3] = &unk_1004BA430;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [(STBackgroundActivitiesStatusDomainPublisher *)publisher handleUserInteractionsWithBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)publishNewData
{
  v3 = self->_currentAttribution;
  if (self->_backgroundActivityActive)
  {
    v4 = +[BSAuditToken tokenForCurrentProcess];
    v5 = v4;
    if (v4)
    {
      [v4 realToken];
    }

    else
    {
      *location = 0u;
      v19 = 0u;
    }

    v7 = [STActivityAttribution attributionWithAuditToken:location];

    v6 = [[STBackgroundActivitiesStatusDomainBackgroundActivityAttribution alloc] initWithBackgroundActivityIdentifier:self->_backgroundActivityIdentifier activityAttribution:v7 showsWhenForeground:self->_shouldShowInForeground];
  }

  else
  {
    v6 = 0;
  }

  objc_initWeak(location, self);
  publisher = self->_publisher;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000AFD7C;
  v15[3] = &unk_1004BA458;
  v9 = v3;
  v16 = v9;
  v10 = v6;
  v17 = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000AFDFC;
  v12[3] = &unk_1004B9630;
  objc_copyWeak(&v14, location);
  v11 = v10;
  v13 = v11;
  [(STBackgroundActivitiesStatusDomainPublisher *)publisher updateVolatileData:v15 completion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(location);
}

@end
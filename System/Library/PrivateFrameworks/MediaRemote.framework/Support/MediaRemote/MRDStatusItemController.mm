@interface MRDStatusItemController
+ (id)controllerForStatusItemIdentifier:(id)identifier;
- (MRDStatusItemController)initWithStatusItemIdentifier:(id)identifier;
- (void)dealloc;
- (void)publishNewData;
- (void)setIsStatusItemActive:(BOOL)active;
@end

@implementation MRDStatusItemController

+ (id)controllerForStatusItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (qword_100529518 != -1)
  {
    sub_1003AA714();
  }

  v5 = [qword_100529520 objectForKeyedSubscript:identifierCopy];
  v6 = v5;
  if (identifierCopy && !v5)
  {
    v6 = [[self alloc] initWithStatusItemIdentifier:identifierCopy];
    [qword_100529520 setObject:v6 forKeyedSubscript:identifierCopy];
  }

  return v6;
}

- (MRDStatusItemController)initWithStatusItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = MRDStatusItemController;
  v5 = [(MRDStatusItemController *)&v14 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    statusItemIdentifier = v5->_statusItemIdentifier;
    v5->_statusItemIdentifier = v6;

    v8 = objc_alloc_init(STStatusItemsStatusDomainPublisher);
    publisher = v5->_publisher;
    v5->_publisher = v8;

    v10 = v5->_publisher;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100141630;
    v12[3] = &unk_1004BEA78;
    v13 = identifierCopy;
    [(STStatusItemsStatusDomainPublisher *)v10 handleUserInteractionsWithBlock:v12];
  }

  return v5;
}

- (void)dealloc
{
  [(STStatusItemsStatusDomainPublisher *)self->_publisher invalidate];
  v3.receiver = self;
  v3.super_class = MRDStatusItemController;
  [(MRDStatusItemController *)&v3 dealloc];
}

- (void)setIsStatusItemActive:(BOOL)active
{
  if (self->_statusItemActive != active)
  {
    self->_statusItemActive = active;
    [(MRDStatusItemController *)self publishNewData];
  }
}

- (void)publishNewData
{
  v3 = self->_currentAttribution;
  if (self->_statusItemActive)
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

    v6 = [[STStatusItemsStatusDomainStatusItemAttribution alloc] initWithStatusItemIdentifier:self->_statusItemIdentifier activityAttribution:v7];
  }

  else
  {
    v6 = 0;
  }

  objc_initWeak(location, self);
  publisher = self->_publisher;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100141988;
  v15[3] = &unk_1004BEAA0;
  v9 = v3;
  v16 = v9;
  v10 = v6;
  v17 = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100141A08;
  v12[3] = &unk_1004B9630;
  objc_copyWeak(&v14, location);
  v11 = v10;
  v13 = v11;
  [(STStatusItemsStatusDomainPublisher *)publisher updateVolatileData:v15 completion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(location);
}

@end
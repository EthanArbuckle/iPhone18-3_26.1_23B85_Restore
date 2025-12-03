@interface MUIMessageListInstantAnswerSectionDataSource
- (MUIMessageListInstantAnswerSectionDataSource)initWithConfiguration:(id)configuration;
- (UICollectionViewCellRegistration)flightCellRegistration;
- (UICollectionViewCellRegistration)hotelCellRegistration;
- (id)cellRegistration;
- (void)_configureCell:(id)cell atIndexPath:(id)path itemID:(id)d;
- (void)collection:(id)collection addedItemIDs:(id)ds toThreadWithItemID:(id)d before:(id)before unreadItemIDs:(id)iDs isLastObserver:(BOOL)observer;
- (void)collection:(id)collection instantAnswer:(id)answer;
@end

@implementation MUIMessageListInstantAnswerSectionDataSource

- (MUIMessageListInstantAnswerSectionDataSource)initWithConfiguration:(id)configuration
{
  v6.receiver = self;
  v6.super_class = MUIMessageListInstantAnswerSectionDataSource;
  v3 = [(MUIMessageListSearchSectionDataSource *)&v6 initWithConfiguration:configuration];
  v4 = v3;
  if (v3)
  {
    [(MUIMessageListInstantAnswerSectionDataSource *)v3 flightCellRegistration];

    [(MUIMessageListInstantAnswerSectionDataSource *)v4 hotelCellRegistration];
  }

  return v4;
}

- (void)_configureCell:(id)cell atIndexPath:(id)path itemID:(id)d
{
  cellCopy = cell;
  instantAnswer = [(MUIMessageListInstantAnswerSectionDataSource *)self instantAnswer];
  [cellCopy setInstantAnswer:instantAnswer];

  iaDelegate = [(MUIMessageListInstantAnswerSectionDataSource *)self iaDelegate];
  actionDelegate = [iaDelegate actionDelegate];
  [cellCopy setActionDelegate:actionDelegate];
}

- (id)cellRegistration
{
  instantAnswer = [(MUIMessageListInstantAnswerSectionDataSource *)self instantAnswer];
  flight = [instantAnswer flight];

  if (flight)
  {
    flightCellRegistration = [(MUIMessageListInstantAnswerSectionDataSource *)self flightCellRegistration];
  }

  else
  {
    instantAnswer2 = [(MUIMessageListInstantAnswerSectionDataSource *)self instantAnswer];
    hotel = [instantAnswer2 hotel];

    if (hotel)
    {
      flightCellRegistration = [(MUIMessageListInstantAnswerSectionDataSource *)self hotelCellRegistration];
    }

    else
    {
      v9.receiver = self;
      v9.super_class = MUIMessageListInstantAnswerSectionDataSource;
      flightCellRegistration = [(MUIMessageListUnbundledSectionDataSource *)&v9 cellRegistration];
    }
  }

  return flightCellRegistration;
}

- (UICollectionViewCellRegistration)flightCellRegistration
{
  flightCellRegistration = self->_flightCellRegistration;
  if (!flightCellRegistration)
  {
    iaDelegate = [(MUIMessageListInstantAnswerSectionDataSource *)self iaDelegate];
    v5 = -[MUIMessageListUnbundledSectionDataSource createCellRegistrationForCellClass:](self, "createCellRegistrationForCellClass:", [iaDelegate instantAnswerFlightCellClass]);
    v6 = self->_flightCellRegistration;
    self->_flightCellRegistration = v5;

    flightCellRegistration = self->_flightCellRegistration;
  }

  return flightCellRegistration;
}

- (UICollectionViewCellRegistration)hotelCellRegistration
{
  hotelCellRegistration = self->_hotelCellRegistration;
  if (!hotelCellRegistration)
  {
    iaDelegate = [(MUIMessageListInstantAnswerSectionDataSource *)self iaDelegate];
    v5 = -[MUIMessageListUnbundledSectionDataSource createCellRegistrationForCellClass:](self, "createCellRegistrationForCellClass:", [iaDelegate instantAnswerHotelCellClass]);
    v6 = self->_hotelCellRegistration;
    self->_hotelCellRegistration = v5;

    hotelCellRegistration = self->_hotelCellRegistration;
  }

  return hotelCellRegistration;
}

- (void)collection:(id)collection instantAnswer:(id)answer
{
  if (answer)
  {
    [(MUIMessageListInstantAnswerSectionDataSource *)self setInstantAnswer:answer];
  }
}

- (void)collection:(id)collection addedItemIDs:(id)ds toThreadWithItemID:(id)d before:(id)before unreadItemIDs:(id)iDs isLastObserver:(BOOL)observer
{
  observerCopy = observer;
  v32 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  dsCopy = ds;
  dCopy = d;
  beforeCopy = before;
  iDsCopy = iDs;
  if (![(MUIMessageListInstantAnswerSectionDataSource *)self didAddInstantAnswer])
  {
    instantAnswer = [(MUIMessageListInstantAnswerSectionDataSource *)self instantAnswer];
    message = [instantAnswer message];

    itemID = [message itemID];
    if (itemID)
    {
      v26 = [dsCopy arrayByAddingObject:itemID];

      [(MUIMessageListInstantAnswerSectionDataSource *)self setDidAddInstantAnswer:1];
      v23 = [(MessageListSectionDataSource *)self log];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v25 = NSStringFromSelector(a2);
        [message ef_publicDescription];
        *buf = 138543618;
        v29 = v25;
        v31 = v30 = 2114;
        v24 = v31;
        _os_log_impl(&dword_214A5E000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ - didAddInstantAnswer for %{public}@", buf, 0x16u);
      }

      dsCopy = v26;
    }
  }

  v27.receiver = self;
  v27.super_class = MUIMessageListInstantAnswerSectionDataSource;
  [(MessageListSectionDataSource *)&v27 collection:collectionCopy addedItemIDs:dsCopy toThreadWithItemID:dCopy before:beforeCopy unreadItemIDs:iDsCopy isLastObserver:observerCopy];
}

@end
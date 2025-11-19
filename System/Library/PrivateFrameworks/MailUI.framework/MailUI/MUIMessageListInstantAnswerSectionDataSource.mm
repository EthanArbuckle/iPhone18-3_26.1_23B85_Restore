@interface MUIMessageListInstantAnswerSectionDataSource
- (MUIMessageListInstantAnswerSectionDataSource)initWithConfiguration:(id)a3;
- (UICollectionViewCellRegistration)flightCellRegistration;
- (UICollectionViewCellRegistration)hotelCellRegistration;
- (id)cellRegistration;
- (void)_configureCell:(id)a3 atIndexPath:(id)a4 itemID:(id)a5;
- (void)collection:(id)a3 addedItemIDs:(id)a4 toThreadWithItemID:(id)a5 before:(id)a6 unreadItemIDs:(id)a7 isLastObserver:(BOOL)a8;
- (void)collection:(id)a3 instantAnswer:(id)a4;
@end

@implementation MUIMessageListInstantAnswerSectionDataSource

- (MUIMessageListInstantAnswerSectionDataSource)initWithConfiguration:(id)a3
{
  v6.receiver = self;
  v6.super_class = MUIMessageListInstantAnswerSectionDataSource;
  v3 = [(MUIMessageListSearchSectionDataSource *)&v6 initWithConfiguration:a3];
  v4 = v3;
  if (v3)
  {
    [(MUIMessageListInstantAnswerSectionDataSource *)v3 flightCellRegistration];

    [(MUIMessageListInstantAnswerSectionDataSource *)v4 hotelCellRegistration];
  }

  return v4;
}

- (void)_configureCell:(id)a3 atIndexPath:(id)a4 itemID:(id)a5
{
  v6 = a3;
  v7 = [(MUIMessageListInstantAnswerSectionDataSource *)self instantAnswer];
  [v6 setInstantAnswer:v7];

  v9 = [(MUIMessageListInstantAnswerSectionDataSource *)self iaDelegate];
  v8 = [v9 actionDelegate];
  [v6 setActionDelegate:v8];
}

- (id)cellRegistration
{
  v3 = [(MUIMessageListInstantAnswerSectionDataSource *)self instantAnswer];
  v4 = [v3 flight];

  if (v4)
  {
    v5 = [(MUIMessageListInstantAnswerSectionDataSource *)self flightCellRegistration];
  }

  else
  {
    v6 = [(MUIMessageListInstantAnswerSectionDataSource *)self instantAnswer];
    v7 = [v6 hotel];

    if (v7)
    {
      v5 = [(MUIMessageListInstantAnswerSectionDataSource *)self hotelCellRegistration];
    }

    else
    {
      v9.receiver = self;
      v9.super_class = MUIMessageListInstantAnswerSectionDataSource;
      v5 = [(MUIMessageListUnbundledSectionDataSource *)&v9 cellRegistration];
    }
  }

  return v5;
}

- (UICollectionViewCellRegistration)flightCellRegistration
{
  flightCellRegistration = self->_flightCellRegistration;
  if (!flightCellRegistration)
  {
    v4 = [(MUIMessageListInstantAnswerSectionDataSource *)self iaDelegate];
    v5 = -[MUIMessageListUnbundledSectionDataSource createCellRegistrationForCellClass:](self, "createCellRegistrationForCellClass:", [v4 instantAnswerFlightCellClass]);
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
    v4 = [(MUIMessageListInstantAnswerSectionDataSource *)self iaDelegate];
    v5 = -[MUIMessageListUnbundledSectionDataSource createCellRegistrationForCellClass:](self, "createCellRegistrationForCellClass:", [v4 instantAnswerHotelCellClass]);
    v6 = self->_hotelCellRegistration;
    self->_hotelCellRegistration = v5;

    hotelCellRegistration = self->_hotelCellRegistration;
  }

  return hotelCellRegistration;
}

- (void)collection:(id)a3 instantAnswer:(id)a4
{
  if (a4)
  {
    [(MUIMessageListInstantAnswerSectionDataSource *)self setInstantAnswer:a4];
  }
}

- (void)collection:(id)a3 addedItemIDs:(id)a4 toThreadWithItemID:(id)a5 before:(id)a6 unreadItemIDs:(id)a7 isLastObserver:(BOOL)a8
{
  v8 = a8;
  v32 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  if (![(MUIMessageListInstantAnswerSectionDataSource *)self didAddInstantAnswer])
  {
    v20 = [(MUIMessageListInstantAnswerSectionDataSource *)self instantAnswer];
    v21 = [v20 message];

    v22 = [v21 itemID];
    if (v22)
    {
      v26 = [v16 arrayByAddingObject:v22];

      [(MUIMessageListInstantAnswerSectionDataSource *)self setDidAddInstantAnswer:1];
      v23 = [(MessageListSectionDataSource *)self log];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v25 = NSStringFromSelector(a2);
        [v21 ef_publicDescription];
        *buf = 138543618;
        v29 = v25;
        v31 = v30 = 2114;
        v24 = v31;
        _os_log_impl(&dword_214A5E000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ - didAddInstantAnswer for %{public}@", buf, 0x16u);
      }

      v16 = v26;
    }
  }

  v27.receiver = self;
  v27.super_class = MUIMessageListInstantAnswerSectionDataSource;
  [(MessageListSectionDataSource *)&v27 collection:v15 addedItemIDs:v16 toThreadWithItemID:v17 before:v18 unreadItemIDs:v19 isLastObserver:v8];
}

@end
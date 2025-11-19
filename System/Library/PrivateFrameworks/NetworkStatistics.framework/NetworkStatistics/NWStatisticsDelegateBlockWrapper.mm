@interface NWStatisticsDelegateBlockWrapper
- (void)sourceDidReceiveCounts:(id)a3;
- (void)sourceDidReceiveDescription:(id)a3;
- (void)statisticsManager:(id)a3 didAddSource:(id)a4;
- (void)statisticsManager:(id)a3 didRemoveSource:(id)a4;
@end

@implementation NWStatisticsDelegateBlockWrapper

- (void)statisticsManager:(id)a3 didAddSource:(id)a4
{
  v7 = a4;
  v5 = [(NWStatisticsDelegateBlockWrapper *)self addedBlock];

  if (v5)
  {
    v6 = [(NWStatisticsDelegateBlockWrapper *)self addedBlock];
    (v6)[2](v6, v7);
  }
}

- (void)statisticsManager:(id)a3 didRemoveSource:(id)a4
{
  v11 = a4;
  v4 = [v11 delegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v11 delegate];
    v7 = [v6 eventsBlock];
    v8 = v7;
    if (v7)
    {
      (*(v7 + 16))(v7, v11, 2);
    }

    else
    {
      v9 = [v6 removedBlock];
      v10 = v9;
      if (v9)
      {
        (*(v9 + 16))(v9);
      }
    }

    [v11 setDelegate:0];
  }
}

- (void)sourceDidReceiveCounts:(id)a3
{
  v9 = a3;
  v4 = [(NWStatisticsDelegateBlockWrapper *)self eventsBlock];

  if (v4)
  {
    v5 = [(NWStatisticsDelegateBlockWrapper *)self eventsBlock];
    (v5)[2](v5, v9, 0);
  }

  else
  {
    v6 = [(NWStatisticsDelegateBlockWrapper *)self countsBlock];

    if (!v6)
    {
      goto LABEL_6;
    }

    v5 = [v9 currentSnapshot];
    v7 = [v5 traditionalDictionary];
    v8 = [(NWStatisticsDelegateBlockWrapper *)self countsBlock];
    (v8)[2](v8, v7);
  }

LABEL_6:
}

- (void)sourceDidReceiveDescription:(id)a3
{
  v9 = a3;
  v4 = [(NWStatisticsDelegateBlockWrapper *)self eventsBlock];

  if (v4)
  {
    v5 = [(NWStatisticsDelegateBlockWrapper *)self eventsBlock];
    (v5)[2](v5, v9, 1);
  }

  else
  {
    v6 = [(NWStatisticsDelegateBlockWrapper *)self descriptionBlock];

    if (!v6)
    {
      goto LABEL_6;
    }

    v5 = [v9 currentSnapshot];
    v7 = [v5 traditionalDictionary];
    v8 = [(NWStatisticsDelegateBlockWrapper *)self descriptionBlock];
    (v8)[2](v8, v7);
  }

LABEL_6:
}

@end
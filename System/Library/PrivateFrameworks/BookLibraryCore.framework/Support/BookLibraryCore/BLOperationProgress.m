@interface BLOperationProgress
- (BLOperationProgress)init;
- (NSString)description;
- (double)estimatedTimeRemaining;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)currentValue;
- (int64_t)maxValue;
- (int64_t)normalizedCurrentValue;
- (int64_t)normalizedMaxValue;
- (int64_t)units;
- (void)_updateStatisticsFromSnapshots;
- (void)resetSnapshots;
- (void)setCurrentValue:(int64_t)a3;
- (void)setEstimatedTimeRemaining:(double)a3;
- (void)setMaxValue:(int64_t)a3;
- (void)setUnits:(int64_t)a3;
- (void)snapshot;
@end

@implementation BLOperationProgress

- (BLOperationProgress)init
{
  v6.receiver = self;
  v6.super_class = BLOperationProgress;
  v2 = [(BLOperationProgress *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.BookLibrary.BLOperationProgress", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v2->_estimatedTimeRemaining = -1.0;
    v2->_changeRate = -1.0;
    v2->_normalizedCurrentValue = -1;
    v2->_normalizedMaxValue = -1;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100086600;
  v9[3] = &unk_10011D1A8;
  v6 = v4;
  v10 = v6;
  v11 = self;
  dispatch_sync(dispatchQueue, v9);
  v7 = v6;

  return v7;
}

- (int64_t)currentValue
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100086704;
  v5[3] = &unk_10011D808;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (double)estimatedTimeRemaining
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0xBFF0000000000000;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000867C8;
  v5[3] = &unk_10011D808;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)maxValue
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100086888;
  v5[3] = &unk_10011D808;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)normalizedCurrentValue
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100086948;
  v5[3] = &unk_10011D808;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)normalizedMaxValue
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100086A14;
  v5[3] = &unk_10011D808;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)resetSnapshots
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100086AA8;
  block[3] = &unk_10011CFE8;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
}

- (void)setCurrentValue:(int64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100086B60;
  v4[3] = &unk_10011D408;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setEstimatedTimeRemaining:(double)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100086BE4;
  v4[3] = &unk_10011D408;
  v4[4] = self;
  *&v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setMaxValue:(int64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100086C68;
  v4[3] = &unk_10011D408;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setUnits:(int64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100086CE8;
  v4[3] = &unk_10011D408;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)snapshot
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100086D68;
  block[3] = &unk_10011CFE8;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
}

- (int64_t)units
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100086F30;
  v5[3] = &unk_10011D808;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSString)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100087034;
  v10 = sub_100087044;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008704C;
  v5[3] = &unk_10011D808;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_updateStatisticsFromSnapshots
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = [(NSMutableArray *)self->_snapshotTimes count];
  v4 = -1.0;
  if (v3 < 6)
  {
    v18 = -1.0;
  }

  else
  {
    v5 = v3;
    v6 = 0.0;
    for (i = 1; i != v5; ++i)
    {
      v8 = [(NSMutableArray *)self->_snapshotTimes objectAtIndex:i];
      [v8 doubleValue];
      v10 = v9;
      v11 = [(NSMutableArray *)self->_snapshotTimes objectAtIndex:i - 1];
      [v11 doubleValue];
      v13 = v10 - v12;

      v14 = [(NSMutableArray *)self->_snapshotValues objectAtIndex:i];
      v15 = [v14 longLongValue];
      v16 = [(NSMutableArray *)self->_snapshotValues objectAtIndex:i - 1];
      v17 = v15 - [v16 longLongValue];

      v6 = v6 + v17 / v13;
    }

    v18 = v6 / v5;
    if (v18 > 0.00000011920929)
    {
      v19 = self->_maxValue - self->_currentValue;
      if ((v19 & 0x8000000000000000) == 0)
      {
        v4 = v19 / v18;
      }
    }
  }

  self->_changeRate = v18;
  self->_estimatedTimeRemaining = v4;
}

@end
@interface iAPMediaLibraryHelper
- (BOOL)_updateRadioLibraryList;
- (BOOL)showAudioBooks;
- (BOOL)showITunesU;
- (BOOL)showMusic;
- (BOOL)showPodcasts;
- (BOOL)stationGetError;
- (iAPMediaLibraryHelper)init;
- (id)stationForIndex:(unint64_t)a3;
- (id)stationNameForIndex:(unint64_t)a3;
- (unsigned)stationCount;
- (void)_radioLibraryChanged:(id)a3;
- (void)dealloc;
- (void)handlMediaLibraryNeedFilterChange:(id)a3;
- (void)iterateStationsList:(id)a3;
@end

@implementation iAPMediaLibraryHelper

- (iAPMediaLibraryHelper)init
{
  v6.receiver = self;
  v6.super_class = iAPMediaLibraryHelper;
  v2 = [(iAPMediaLibraryHelper *)&v6 init];
  if (!v2)
  {
    return v2;
  }

  result = dispatch_queue_create("com.apple.iapd.mediaLibraryUpdateQ", 0);
  if (((v2 + 16) & 7) == 0)
  {
    v2->_libraryUpdateQ = result;
    result = objc_alloc_init(MediaLibraryHelper);
    if (((v2 + 32) & 7) == 0)
    {
      v2->_mediaLibraryHelper = result;
      v2->_stationGetError = 0;
      if (((v2 + 8) & 3) == 0)
      {
        v2->_stationCount = 0;
        [(iAPMediaLibraryHelper *)v2 _updateRadioLibraryList];
        [+[MPMediaLibrary defaultMediaLibrary](MPMediaLibrary beginGeneratingLibraryChangeNotifications];
        v4 = +[NSNotificationCenter defaultCenter];
        [(NSNotificationCenter *)v4 addObserver:v2 selector:"_radioLibraryChanged:" name:MPRadioLibraryStationsDidChangeNotification object:0];
        v5 = +[NSNotificationCenter defaultCenter];
        [(NSNotificationCenter *)v5 addObserver:v2 selector:"handlMediaLibraryNeedFilterChange:" name:off_10012B798 object:0];
        return v2;
      }
    }
  }

  __break(0x5516u);
  return result;
}

- (void)dealloc
{
  [+[MPMediaLibrary defaultMediaLibrary](MPMediaLibrary endGeneratingLibraryChangeNotifications];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:", self];
  v3.receiver = self;
  v3.super_class = iAPMediaLibraryHelper;
  [(iAPMediaLibraryHelper *)&v3 dealloc];
}

- (unsigned)stationCount
{
  LODWORD(v3) = [(iAPMediaLibraryHelper *)self showMusic];
  if ((v3 & 1) == 0)
  {
    LODWORD(v3) = 0;
    return v3;
  }

  stationGetError = self->_stationGetError;
  if (stationGetError >= 2)
  {
LABEL_12:
    __break(0x550Au);
    return v3;
  }

  if (stationGetError)
  {
    LODWORD(v3) = [(iAPMediaLibraryHelper *)self _updateRadioLibraryList];
    if (v3)
    {
      v3 = sub_1000388B8();
      if (!v3 || (v3 & 7) != 0)
      {
        goto LABEL_11;
      }

      LODWORD(v3) = sub_10003DD18(v3);
    }
  }

  if ((&self->_stationCount & 3) != 0)
  {
LABEL_11:
    __break(0x5516u);
    goto LABEL_12;
  }

  LODWORD(v3) = self->_stationCount;
  return v3;
}

- (BOOL)_updateRadioLibraryList
{
  p_mediaLibraryHelper = &self->_mediaLibraryHelper;
  if ((&self->_mediaLibraryHelper & 7) != 0)
  {
    goto LABEL_32;
  }

  v3 = self;
  NSLog(@"%s:%d iTunesRadioEnabled=%d", "[iAPMediaLibraryHelper _updateRadioLibraryList]", 617, [(MediaLibraryHelper *)*p_mediaLibraryHelper iTunesRadioEnabled]);
  if ([(MediaLibraryHelper *)*p_mediaLibraryHelper iTunesRadioEnabled])
  {
    v4 = dispatch_semaphore_create(0);
    if (!v4 || (v5 = v4, dispatch_retain(v4), v32 = 0, v33 = &v32, v34 = 0x2020000000, v35 = 0, (global_queue = dispatch_get_global_queue(0, 0)) == 0))
    {
LABEL_34:
      __break(0x5510u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002F0DC;
    block[3] = &unk_100114040;
    block[5] = v5;
    block[6] = &v32;
    block[4] = v3;
    dispatch_async(global_queue, block);
    v7 = dispatch_time(0, 2000000000);
    v8 = dispatch_semaphore_wait(v5, v7);
    v9 = v8 == 0;
    if (v8)
    {
      *(v33 + 24) = 1;
      NSLog(@"%s:%d WARNING: timed out(%d) waiting for recent stations list, give up for now", "[iAPMediaLibraryHelper _updateRadioLibraryList]", 664, 2);
    }

    dispatch_release(v5);
    p_stationCount = &v3->_stationCount;
    if ((&v3->_stationCount & 3) != 0)
    {
      goto LABEL_32;
    }

    v3->_stationCount = 0;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    p_stationsGroupList = &v3->_stationsGroupList;
    if ((&v3->_stationsGroupList & 7) != 0)
    {
      goto LABEL_32;
    }

    v25 = v9;
    v26 = v3;
    v12 = *p_stationsGroupList;
    v13 = [*p_stationsGroupList countByEnumeratingWithState:&v27 objects:v36 count:16];
    if (!v13)
    {
      goto LABEL_18;
    }

    v14 = *v28;
LABEL_11:
    v15 = 0;
    while (1)
    {
      if (*v28 != v14)
      {
        objc_enumerationMutation(v12);
      }

      v16 = *(*(&v27 + 1) + 8 * v15);
      sub_1000DDE90(0, @"%s:%d _stationCount: %d, [[stationsGroup stations] count]: %d, stations: %@", "-[iAPMediaLibraryHelper _updateRadioLibraryList]", 674, *p_stationCount, [objc_msgSend(v16 "stations")], objc_msgSend(v16, "stations"));
      v17 = [objc_msgSend(v16 "stations")];
      v18 = *p_stationCount;
      v19 = __CFADD__(v18, v17);
      v20 = &v17[v18];
      if (v19)
      {
        break;
      }

      if (HIDWORD(v20))
      {
        goto LABEL_31;
      }

      *p_stationCount = v20;
      if (v13 == ++v15)
      {
        v13 = [v12 countByEnumeratingWithState:&v27 objects:v36 count:16];
        if (!v13)
        {
LABEL_18:
          _Block_object_dispose(&v32, 8);
          v3 = v26;
          v21 = v25;
          goto LABEL_22;
        }

        goto LABEL_11;
      }
    }

    __break(0x5500u);
LABEL_31:
    __break(0x5507u);
LABEL_32:
    __break(0x5516u);
LABEL_33:
    __break(0x550Au);
    goto LABEL_34;
  }

  if (((v3 + 8) & 3) != 0)
  {
    goto LABEL_32;
  }

  v3->_stationCount = 0;
  v22 = &v3->_stationsGroupList;
  if ((&v3->_stationsGroupList & 7) != 0)
  {
    goto LABEL_32;
  }

  *v22 = 0;
  v21 = 1;
LABEL_22:
  if (v3->_stationGetError >= 2u)
  {
    goto LABEL_33;
  }

  if (((v3 + 24) & 7) != 0)
  {
    goto LABEL_32;
  }

  NSLog(@"%s:%d _stationCount=%d max=%d _stationGetError=%d _stationsGroupList=%@", "[iAPMediaLibraryHelper _updateRadioLibraryList]", 687, v3->_stationCount, dword_1001295B0, v3->_stationGetError, v3->_stationsGroupList);
  if (v3->_stationCount > dword_1001295B0)
  {
    v3->_stationCount = dword_1001295B0;
  }

  if (v21)
  {
    LOBYTE(stationGetError) = 1;
  }

  else
  {
    stationGetError = v3->_stationGetError;
    if (stationGetError > 1)
    {
      goto LABEL_33;
    }
  }

  return stationGetError;
}

- (void)_radioLibraryChanged:(id)a3
{
  if (((self + 32) & 7) != 0)
  {
    goto LABEL_9;
  }

  NSLog(@"%s:%d iTunesRadioEnabled=%d notification=%@", "[iAPMediaLibraryHelper _radioLibraryChanged:]", 700, [(MediaLibraryHelper *)self->_mediaLibraryHelper iTunesRadioEnabled], a3);
  if (![(iAPMediaLibraryHelper *)self _updateRadioLibraryList])
  {
    return;
  }

  v4 = sub_1000388B8();
  if (!v4 || (v4 & 7) != 0)
  {
LABEL_9:
    __break(0x5516u);
    return;
  }

  sub_10003DD18(v4);
}

- (void)iterateStationsList:(id)a3
{
  stationGetError = self->_stationGetError;
  if (stationGetError >= 2)
  {
LABEL_30:
    __break(0x550Au);
  }

  if ((stationGetError & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_1000DDE90(0, @"%s:%d _stationGetError=%d, try retrieve station list again", "[iAPMediaLibraryHelper iterateStationsList:]", 734, 1);
  if ([(iAPMediaLibraryHelper *)self _updateRadioLibraryList])
  {
    goto LABEL_7;
  }

  v6 = sub_1000388B8();
  if (!v6 || (v6 & 7) != 0)
  {
LABEL_29:
    __break(0x5516u);
    goto LABEL_30;
  }

  sub_10003DD18(v6);
LABEL_7:
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  p_stationsGroupList = &self->_stationsGroupList;
  if ((&self->_stationsGroupList & 7) != 0)
  {
    goto LABEL_29;
  }

  obj = *p_stationsGroupList;
  v21 = [*p_stationsGroupList countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (!v21)
  {
    return;
  }

  v8 = 0;
  v9 = 0;
  v23 = *v31;
  do
  {
    v10 = 0;
    v20 = ~v8;
    do
    {
      if (*v31 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v24 = v10;
      v11 = *(*(&v30 + 1) + 8 * v10);
      v12 = [v11 stations];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v25 = v12;
      v13 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = 0;
        v16 = *v27;
        do
        {
          v17 = 0;
          v18 = ~v15;
          v19 = ~v9;
          do
          {
            if (*v27 != v16)
            {
              objc_enumerationMutation(v25);
            }

            if (((*(a3 + 2))(a3, v9, v8, v15, v11, *(*(&v26 + 1) + 8 * v17)) & 1) != 0 || v9 >= dword_1001295B0)
            {
              return;
            }

            if (v18 == v17 || v19 == v17)
            {
              goto LABEL_28;
            }

            v15 = (v15 + 1);
            v9 = (v9 + 1);
            v17 = v17 + 1;
          }

          while (v14 != v17);
          v14 = [v25 countByEnumeratingWithState:&v26 objects:v34 count:16];
        }

        while (v14);
      }

      if (v24 == v20)
      {
LABEL_28:
        __break(0x5500u);
        goto LABEL_29;
      }

      v8 = (v8 + 1);
      v10 = v24 + 1;
    }

    while ((v24 + 1) != v21);
    v21 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  }

  while (v21);
}

- (id)stationForIndex:(unint64_t)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_10002F680;
  v10 = sub_10002F690;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002F69C;
  v5[3] = &unk_100114068;
  v5[4] = &v6;
  v5[5] = a3;
  [(iAPMediaLibraryHelper *)self iterateStationsList:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)stationNameForIndex:(unint64_t)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_10002F680;
  v10 = sub_10002F690;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002F7F8;
  v5[3] = &unk_100114068;
  v5[4] = &v6;
  v5[5] = a3;
  [(iAPMediaLibraryHelper *)self iterateStationsList:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)handlMediaLibraryNeedFilterChange:(id)a3
{
  sub_1000DDE90(0, @"%s:%d notification=%@", "[iAPMediaLibraryHelper handlMediaLibraryNeedFilterChange:]", 826, a3);
  dword_1001295B8 = -1;
  dword_1001295BC = -1;
  if (!dword_1001295B4)
  {
    [qword_10012BAA0 reset];
  }

  [(iAPMediaLibraryHelper *)self _updateRadioLibraryList];
  v4 = sub_1000388B8();
  if (!v4 || (v4 & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {

    sub_10003DD18(v4);
  }
}

- (BOOL)showMusic
{
  if ((&self->_mediaLibraryHelper & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    LOBYTE(self) = [(MediaLibraryHelper *)self->_mediaLibraryHelper showMusic];
  }

  return self;
}

- (BOOL)showPodcasts
{
  if ((&self->_mediaLibraryHelper & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    LOBYTE(self) = [(MediaLibraryHelper *)self->_mediaLibraryHelper showPodcasts];
  }

  return self;
}

- (BOOL)showITunesU
{
  if ((&self->_mediaLibraryHelper & 7) == 0)
  {
    return [(MediaLibraryHelper *)self->_mediaLibraryHelper showiTunesU];
  }

  __break(0x5516u);
  return [(iAPMediaLibraryHelper *)self showiTunesU];
}

- (BOOL)showAudioBooks
{
  if ((&self->_mediaLibraryHelper & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    LOBYTE(self) = [(MediaLibraryHelper *)self->_mediaLibraryHelper showAudioBooks];
  }

  return self;
}

- (BOOL)stationGetError
{
  if (self->_stationGetError >= 2u)
  {
    __break(0x550Au);
  }

  else
  {
    LOBYTE(self) = self->_stationGetError;
  }

  return self;
}

@end
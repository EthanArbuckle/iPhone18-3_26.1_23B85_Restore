@interface MUDownloadOfflineActionRowItemViewModel
- (BOOL)titleUsesMonospacedNumbersFont;
- (MUDownloadOfflineActionRowItemViewModel)initWithOfflineMapProvider:(id)a3;
- (MUOfflineMapProvider)offlineMapProvider;
- (id)accessoryView;
- (id)byteCountFormatter;
- (id)progressView;
- (id)symbolName;
- (id)titleText;
- (unint64_t)actionItemType;
- (void)dealloc;
@end

@implementation MUDownloadOfflineActionRowItemViewModel

- (MUOfflineMapProvider)offlineMapProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_offlineMapProvider);

  return WeakRetained;
}

- (unint64_t)actionItemType
{
  WeakRetained = objc_loadWeakRetained(&self->_offlineMapProvider);
  v3 = [WeakRetained downloadState];

  if ((v3 - 1) > 4)
  {
    return 34;
  }

  else
  {
    return qword_1C587A150[v3 - 1];
  }
}

- (id)progressView
{
  if (!self->_progressView)
  {
    v3 = objc_alloc_init(MUCircleProgressObservingView);
    progressView = self->_progressView;
    self->_progressView = v3;

    v5 = MEMORY[0x1E69DCAB8];
    v6 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:10.0];
    v7 = [v5 systemImageNamed:@"stop.fill" withConfiguration:v6];
    [(MUCircleProgressObservingView *)self->_progressView setImage:v7];
  }

  v8 = [(MUDownloadOfflineActionRowItemViewModel *)self offlineMapProvider];
  v9 = [v8 downloadProgress];
  [(MUCircleProgressObservingView *)self->_progressView setProgress:v9];

  v10 = self->_progressView;

  return v10;
}

- (id)byteCountFormatter
{
  byteCountFormatter = self->_byteCountFormatter;
  if (!byteCountFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AAF0]);
    v5 = self->_byteCountFormatter;
    self->_byteCountFormatter = v4;

    [(NSByteCountFormatter *)self->_byteCountFormatter setZeroPadsFractionDigits:1];
    byteCountFormatter = self->_byteCountFormatter;
  }

  return byteCountFormatter;
}

- (BOOL)titleUsesMonospacedNumbersFont
{
  WeakRetained = objc_loadWeakRetained(&self->_offlineMapProvider);
  v3 = [WeakRetained downloadState] == 4;

  return v3;
}

- (id)titleText
{
  v2 = self;
  WeakRetained = objc_loadWeakRetained(&self->_offlineMapProvider);
  v4 = [WeakRetained downloadState];

  if (v4 <= 2)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        v5 = @"Download Map - Waiting [Placecard]";
      }

      else
      {
        if (v4 != 2)
        {
          goto LABEL_14;
        }

        v5 = @"Download Map - Paused [Placecard]";
      }
    }

    else
    {
      v5 = @"Download Map [Placecard]";
    }

    goto LABEL_13;
  }

  if (v4 == 3)
  {
    v5 = @"Download Map - Failed [Placecard]";
LABEL_13:
    v2 = _MULocalizedStringFromThisBundle(v5);
    goto LABEL_14;
  }

  if (v4 != 4)
  {
    if (v4 != 5)
    {
      goto LABEL_14;
    }

    v5 = @"Offline [Placecard]";
    goto LABEL_13;
  }

  v7 = [v2 byteCountFormatter];
  v8 = [v2 offlineMapProvider];
  v9 = [v8 downloadProgress];
  v10 = [v9 byteCompletedCount];
  v2 = [v7 stringFromByteCount:{objc_msgSend(v10, "longLongValue")}];

LABEL_14:

  return v2;
}

- (id)accessoryView
{
  WeakRetained = objc_loadWeakRetained(&self->_offlineMapProvider);
  v4 = [WeakRetained downloadState];

  if (v4 == 4)
  {
    v5 = [(MUDownloadOfflineActionRowItemViewModel *)self progressView];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)symbolName
{
  WeakRetained = objc_loadWeakRetained(&self->_offlineMapProvider);
  v3 = [WeakRetained downloadState];

  if (v3 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E82198B0[v3];
  }
}

- (void)dealloc
{
  v3 = [(MUDownloadOfflineActionRowItemViewModel *)self offlineMapProvider];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MUDownloadOfflineActionRowItemViewModel;
  [(MUDownloadOfflineActionRowItemViewModel *)&v4 dealloc];
}

- (MUDownloadOfflineActionRowItemViewModel)initWithOfflineMapProvider:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MUDownloadOfflineActionRowItemViewModel;
  v5 = [(MUActionRowItemViewModel *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_offlineMapProvider, v4);
    [v4 addObserver:v6];
  }

  return v6;
}

@end
@interface MUDownloadOfflineActionRowItemViewModel
- (BOOL)titleUsesMonospacedNumbersFont;
- (MUDownloadOfflineActionRowItemViewModel)initWithOfflineMapProvider:(id)provider;
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
  downloadState = [WeakRetained downloadState];

  if ((downloadState - 1) > 4)
  {
    return 34;
  }

  else
  {
    return qword_1C587A150[downloadState - 1];
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

  offlineMapProvider = [(MUDownloadOfflineActionRowItemViewModel *)self offlineMapProvider];
  downloadProgress = [offlineMapProvider downloadProgress];
  [(MUCircleProgressObservingView *)self->_progressView setProgress:downloadProgress];

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
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_offlineMapProvider);
  downloadState = [WeakRetained downloadState];

  if (downloadState <= 2)
  {
    if (downloadState)
    {
      if (downloadState == 1)
      {
        v5 = @"Download Map - Waiting [Placecard]";
      }

      else
      {
        if (downloadState != 2)
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

  if (downloadState == 3)
  {
    v5 = @"Download Map - Failed [Placecard]";
LABEL_13:
    selfCopy = _MULocalizedStringFromThisBundle(v5);
    goto LABEL_14;
  }

  if (downloadState != 4)
  {
    if (downloadState != 5)
    {
      goto LABEL_14;
    }

    v5 = @"Offline [Placecard]";
    goto LABEL_13;
  }

  byteCountFormatter = [selfCopy byteCountFormatter];
  offlineMapProvider = [selfCopy offlineMapProvider];
  downloadProgress = [offlineMapProvider downloadProgress];
  byteCompletedCount = [downloadProgress byteCompletedCount];
  selfCopy = [byteCountFormatter stringFromByteCount:{objc_msgSend(byteCompletedCount, "longLongValue")}];

LABEL_14:

  return selfCopy;
}

- (id)accessoryView
{
  WeakRetained = objc_loadWeakRetained(&self->_offlineMapProvider);
  downloadState = [WeakRetained downloadState];

  if (downloadState == 4)
  {
    progressView = [(MUDownloadOfflineActionRowItemViewModel *)self progressView];
  }

  else
  {
    progressView = 0;
  }

  return progressView;
}

- (id)symbolName
{
  WeakRetained = objc_loadWeakRetained(&self->_offlineMapProvider);
  downloadState = [WeakRetained downloadState];

  if (downloadState > 5)
  {
    return 0;
  }

  else
  {
    return off_1E82198B0[downloadState];
  }
}

- (void)dealloc
{
  offlineMapProvider = [(MUDownloadOfflineActionRowItemViewModel *)self offlineMapProvider];
  [offlineMapProvider removeObserver:self];

  v4.receiver = self;
  v4.super_class = MUDownloadOfflineActionRowItemViewModel;
  [(MUDownloadOfflineActionRowItemViewModel *)&v4 dealloc];
}

- (MUDownloadOfflineActionRowItemViewModel)initWithOfflineMapProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = MUDownloadOfflineActionRowItemViewModel;
  v5 = [(MUActionRowItemViewModel *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_offlineMapProvider, providerCopy);
    [providerCopy addObserver:v6];
  }

  return v6;
}

@end
@interface MUEVChargerAvailabilityDownloader
- (MUEVChargerAvailabilityDownloader)initWithMapItemIdentifier:(id)a3;
- (MUEVChargerAvailabilityDownloaderDelegate)delegate;
- (void)didDownloadEVChargerAvailabilityWithEvCharger:(id)a3;
@end

@implementation MUEVChargerAvailabilityDownloader

- (MUEVChargerAvailabilityDownloaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didDownloadEVChargerAvailabilityWithEvCharger:(id)a3
{
  v8 = a3;
  v4 = [(MUEVChargerAvailabilityDownloader *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(MUEVChargerAvailabilityDownloader *)self delegate];
    v7 = [v8 plugs];
    [v6 evChargerAvailabilityDownloader:self didDownloadAvailabilityWithPlugs:v7];
  }
}

- (MUEVChargerAvailabilityDownloader)initWithMapItemIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MUEVChargerAvailabilityDownloader;
  v5 = [(MUEVChargerAvailabilityDownloader *)&v9 init];
  if (v5)
  {
    v6 = [[_TtC6MapsUI31EVChargerAvailabilityDownloader alloc] initWithMapItemIdentifier:v4];
    [(MUEVChargerAvailabilityDownloader *)v5 setDownloader:v6];

    v7 = [(MUEVChargerAvailabilityDownloader *)v5 downloader];
    [v7 setDelegate:v5];
  }

  return v5;
}

@end
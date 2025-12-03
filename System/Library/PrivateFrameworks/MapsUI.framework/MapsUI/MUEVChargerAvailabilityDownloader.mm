@interface MUEVChargerAvailabilityDownloader
- (MUEVChargerAvailabilityDownloader)initWithMapItemIdentifier:(id)identifier;
- (MUEVChargerAvailabilityDownloaderDelegate)delegate;
- (void)didDownloadEVChargerAvailabilityWithEvCharger:(id)charger;
@end

@implementation MUEVChargerAvailabilityDownloader

- (MUEVChargerAvailabilityDownloaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didDownloadEVChargerAvailabilityWithEvCharger:(id)charger
{
  chargerCopy = charger;
  delegate = [(MUEVChargerAvailabilityDownloader *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(MUEVChargerAvailabilityDownloader *)self delegate];
    plugs = [chargerCopy plugs];
    [delegate2 evChargerAvailabilityDownloader:self didDownloadAvailabilityWithPlugs:plugs];
  }
}

- (MUEVChargerAvailabilityDownloader)initWithMapItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = MUEVChargerAvailabilityDownloader;
  v5 = [(MUEVChargerAvailabilityDownloader *)&v9 init];
  if (v5)
  {
    v6 = [[_TtC6MapsUI31EVChargerAvailabilityDownloader alloc] initWithMapItemIdentifier:identifierCopy];
    [(MUEVChargerAvailabilityDownloader *)v5 setDownloader:v6];

    downloader = [(MUEVChargerAvailabilityDownloader *)v5 downloader];
    [downloader setDelegate:v5];
  }

  return v5;
}

@end
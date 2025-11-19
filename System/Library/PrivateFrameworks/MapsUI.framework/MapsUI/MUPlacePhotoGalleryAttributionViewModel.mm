@interface MUPlacePhotoGalleryAttributionViewModel
+ (id)viewModelForCustomTitle:(id)a3 customSubtitle:(id)a4;
+ (id)viewModelFromMapItem:(id)a3 photo:(id)a4 photoCreditName:(id)a5 shouldAddPhotoCredit:(BOOL)a6;
@end

@implementation MUPlacePhotoGalleryAttributionViewModel

+ (id)viewModelFromMapItem:(id)a3 photo:(id)a4 photoCreditName:(id)a5 shouldAddPhotoCredit:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_alloc_init(MUPlacePhotoGalleryAttributionViewModel);
  if ((MapKitIdiomIsMacCatalyst() & 1) == 0)
  {
    if (v6)
    {
      v13 = 3;
    }

    else
    {
      v14 = MEMORY[0x1E696F2E8];
      v15 = [v10 attribution];
      LODWORD(v14) = [v14 shouldShowReportAnIssueOnPhotoGalleryForMapItem:v9 photoAttribution:v15];

      if (v14)
      {
        v13 = 2;
      }

      else
      {
        v13 = 0;
      }
    }

    [(MUPlacePhotoGalleryAttributionViewModel *)v12 setAccessoryStyle:v13];
  }

  v16 = [v10 geoMapItemPhoto];
  v17 = [v16 author];
  [(MUPlacePhotoGalleryAttributionViewModel *)v12 setAuthorName:v17];

  v18 = [v9 name];
  [(MUPlacePhotoGalleryAttributionViewModel *)v12 setPlaceName:v18];

  v19 = [v10 geoMapItemPhoto];
  v20 = [v19 dateCreated];
  [(MUPlacePhotoGalleryAttributionViewModel *)v12 setPhotoDate:v20];

  v21 = [v10 attribution];
  v22 = [v21 providerName];
  [(MUPlacePhotoGalleryAttributionViewModel *)v12 setVendorName:v22];

  v23 = [v10 geoMapItemPhoto];
  v24 = [v23 caption];
  [(MUPlacePhotoGalleryAttributionViewModel *)v12 setCaption:v24];

  v25 = [v10 attribution];
  LODWORD(v24) = [v25 isUserSubmitted];

  if (v24)
  {
    v26 = v12;
    v27 = 2;
LABEL_12:
    [(MUPlacePhotoGalleryAttributionViewModel *)v26 setAttributionType:v27];
    goto LABEL_13;
  }

  v28 = [v10 attribution];
  v29 = [v28 isBusinessOwned];

  v26 = v12;
  if (v29)
  {
    v27 = 3;
    goto LABEL_12;
  }

  if (v6)
  {
    [(MUPlacePhotoGalleryAttributionViewModel *)v12 setAttributionType:4];
    if ([v11 length])
    {
      [(MUPlacePhotoGalleryAttributionViewModel *)v12 setAuthorName:v11];
    }
  }

  else
  {
    [(MUPlacePhotoGalleryAttributionViewModel *)v12 setAttributionType:1];
    v31 = [v10 attribution];
    v32 = [v10 photoID];
    v33 = [v31 urlsForPhotoWithIdentifier:v32];

    if ([v33 count])
    {
      [(MUPlacePhotoGalleryAttributionViewModel *)v12 setSupportsPunchOut:1];
    }
  }

LABEL_13:

  return v12;
}

+ (id)viewModelForCustomTitle:(id)a3 customSubtitle:(id)a4
{
  v4 = a3;
  v5 = objc_alloc_init(MUPlacePhotoGalleryAttributionViewModel);
  [(MUPlacePhotoGalleryAttributionViewModel *)v5 setTitleText:v4];
  [(MUPlacePhotoGalleryAttributionViewModel *)v5 setSubtitleText:v4];

  return v5;
}

@end
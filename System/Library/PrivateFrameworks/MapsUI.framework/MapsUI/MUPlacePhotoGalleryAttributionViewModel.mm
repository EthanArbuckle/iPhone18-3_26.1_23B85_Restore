@interface MUPlacePhotoGalleryAttributionViewModel
+ (id)viewModelForCustomTitle:(id)title customSubtitle:(id)subtitle;
+ (id)viewModelFromMapItem:(id)item photo:(id)photo photoCreditName:(id)name shouldAddPhotoCredit:(BOOL)credit;
@end

@implementation MUPlacePhotoGalleryAttributionViewModel

+ (id)viewModelFromMapItem:(id)item photo:(id)photo photoCreditName:(id)name shouldAddPhotoCredit:(BOOL)credit
{
  creditCopy = credit;
  itemCopy = item;
  photoCopy = photo;
  nameCopy = name;
  v12 = objc_alloc_init(MUPlacePhotoGalleryAttributionViewModel);
  if ((MapKitIdiomIsMacCatalyst() & 1) == 0)
  {
    if (creditCopy)
    {
      v13 = 3;
    }

    else
    {
      v14 = MEMORY[0x1E696F2E8];
      attribution = [photoCopy attribution];
      LODWORD(v14) = [v14 shouldShowReportAnIssueOnPhotoGalleryForMapItem:itemCopy photoAttribution:attribution];

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

  geoMapItemPhoto = [photoCopy geoMapItemPhoto];
  author = [geoMapItemPhoto author];
  [(MUPlacePhotoGalleryAttributionViewModel *)v12 setAuthorName:author];

  name = [itemCopy name];
  [(MUPlacePhotoGalleryAttributionViewModel *)v12 setPlaceName:name];

  geoMapItemPhoto2 = [photoCopy geoMapItemPhoto];
  dateCreated = [geoMapItemPhoto2 dateCreated];
  [(MUPlacePhotoGalleryAttributionViewModel *)v12 setPhotoDate:dateCreated];

  attribution2 = [photoCopy attribution];
  providerName = [attribution2 providerName];
  [(MUPlacePhotoGalleryAttributionViewModel *)v12 setVendorName:providerName];

  geoMapItemPhoto3 = [photoCopy geoMapItemPhoto];
  caption = [geoMapItemPhoto3 caption];
  [(MUPlacePhotoGalleryAttributionViewModel *)v12 setCaption:caption];

  attribution3 = [photoCopy attribution];
  LODWORD(caption) = [attribution3 isUserSubmitted];

  if (caption)
  {
    v26 = v12;
    v27 = 2;
LABEL_12:
    [(MUPlacePhotoGalleryAttributionViewModel *)v26 setAttributionType:v27];
    goto LABEL_13;
  }

  attribution4 = [photoCopy attribution];
  isBusinessOwned = [attribution4 isBusinessOwned];

  v26 = v12;
  if (isBusinessOwned)
  {
    v27 = 3;
    goto LABEL_12;
  }

  if (creditCopy)
  {
    [(MUPlacePhotoGalleryAttributionViewModel *)v12 setAttributionType:4];
    if ([nameCopy length])
    {
      [(MUPlacePhotoGalleryAttributionViewModel *)v12 setAuthorName:nameCopy];
    }
  }

  else
  {
    [(MUPlacePhotoGalleryAttributionViewModel *)v12 setAttributionType:1];
    attribution5 = [photoCopy attribution];
    photoID = [photoCopy photoID];
    v33 = [attribution5 urlsForPhotoWithIdentifier:photoID];

    if ([v33 count])
    {
      [(MUPlacePhotoGalleryAttributionViewModel *)v12 setSupportsPunchOut:1];
    }
  }

LABEL_13:

  return v12;
}

+ (id)viewModelForCustomTitle:(id)title customSubtitle:(id)subtitle
{
  titleCopy = title;
  v5 = objc_alloc_init(MUPlacePhotoGalleryAttributionViewModel);
  [(MUPlacePhotoGalleryAttributionViewModel *)v5 setTitleText:titleCopy];
  [(MUPlacePhotoGalleryAttributionViewModel *)v5 setSubtitleText:titleCopy];

  return v5;
}

@end
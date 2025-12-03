@interface CKDetailsContactsViewModel
- (CKDetailsContactsViewModel)initWithEntity:(id)entity locationString:(id)string tuConversationStatusIsActive:(BOOL)active callType:(int64_t)type showsLocation:(BOOL)location showsMessageButton:(BOOL)button showsFaceTimeVideoButton:(BOOL)videoButton showsPhoneButton:(BOOL)self0 showsScreenSharingButton:(BOOL)self1 contact:(id)self2 isPendingRecipient:(BOOL)self3 verified:(BOOL)self4 isSatellite:(BOOL)self5 showsTUConversationStatus:(BOOL)self6;
@end

@implementation CKDetailsContactsViewModel

- (CKDetailsContactsViewModel)initWithEntity:(id)entity locationString:(id)string tuConversationStatusIsActive:(BOOL)active callType:(int64_t)type showsLocation:(BOOL)location showsMessageButton:(BOOL)button showsFaceTimeVideoButton:(BOOL)videoButton showsPhoneButton:(BOOL)self0 showsScreenSharingButton:(BOOL)self1 contact:(id)self2 isPendingRecipient:(BOOL)self3 verified:(BOOL)self4 isSatellite:(BOOL)self5 showsTUConversationStatus:(BOOL)self6
{
  buttonCopy = button;
  locationCopy = location;
  activeCopy = active;
  entityCopy = entity;
  stringCopy = string;
  contactCopy = contact;
  v25 = [(CKDetailsContactsViewModel *)self init];
  v26 = v25;
  if (v25)
  {
    [(CKDetailsContactsViewModel *)v25 setEntity:entityCopy];
    rawAddress = [entityCopy rawAddress];
    [(CKDetailsContactsViewModel *)v26 setPreferredHandle:rawAddress];

    fullName = [entityCopy fullName];
    [(CKDetailsContactsViewModel *)v26 setEntityName:fullName];

    [(CKDetailsContactsViewModel *)v26 setLocationString:stringCopy];
    [(CKDetailsContactsViewModel *)v26 setTuConversationStatusIsActive:activeCopy];
    [(CKDetailsContactsViewModel *)v26 setCallType:type];
    [(CKDetailsContactsViewModel *)v26 setShowsLocation:locationCopy];
    [(CKDetailsContactsViewModel *)v26 setShowsMessageButton:buttonCopy];
    [(CKDetailsContactsViewModel *)v26 setShowsFaceTimeVideoButton:videoButton];
    [(CKDetailsContactsViewModel *)v26 setShowsPhoneButton:phoneButton];
    [(CKDetailsContactsViewModel *)v26 setShowsScreenSharingButton:sharingButton];
    [(CKDetailsContactsViewModel *)v26 setContact:contactCopy];
    [(CKDetailsContactsViewModel *)v26 setIsPendingRecipient:recipient];
    [(CKDetailsContactsViewModel *)v26 setVerified:verified];
    [(CKDetailsContactsViewModel *)v26 setIsSatellite:satellite];
    [(CKDetailsContactsViewModel *)v26 setShowsTUConversationStatus:status];
  }

  return v26;
}

@end
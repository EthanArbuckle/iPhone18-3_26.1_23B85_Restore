@interface CKDetailsContactsViewModel
- (CKDetailsContactsViewModel)initWithEntity:(id)a3 locationString:(id)a4 tuConversationStatusIsActive:(BOOL)a5 callType:(int64_t)a6 showsLocation:(BOOL)a7 showsMessageButton:(BOOL)a8 showsFaceTimeVideoButton:(BOOL)a9 showsPhoneButton:(BOOL)a10 showsScreenSharingButton:(BOOL)a11 contact:(id)a12 isPendingRecipient:(BOOL)a13 verified:(BOOL)a14 isSatellite:(BOOL)a15 showsTUConversationStatus:(BOOL)a16;
@end

@implementation CKDetailsContactsViewModel

- (CKDetailsContactsViewModel)initWithEntity:(id)a3 locationString:(id)a4 tuConversationStatusIsActive:(BOOL)a5 callType:(int64_t)a6 showsLocation:(BOOL)a7 showsMessageButton:(BOOL)a8 showsFaceTimeVideoButton:(BOOL)a9 showsPhoneButton:(BOOL)a10 showsScreenSharingButton:(BOOL)a11 contact:(id)a12 isPendingRecipient:(BOOL)a13 verified:(BOOL)a14 isSatellite:(BOOL)a15 showsTUConversationStatus:(BOOL)a16
{
  v16 = a8;
  v17 = a7;
  v19 = a5;
  v22 = a3;
  v23 = a4;
  v24 = a12;
  v25 = [(CKDetailsContactsViewModel *)self init];
  v26 = v25;
  if (v25)
  {
    [(CKDetailsContactsViewModel *)v25 setEntity:v22];
    v27 = [v22 rawAddress];
    [(CKDetailsContactsViewModel *)v26 setPreferredHandle:v27];

    v28 = [v22 fullName];
    [(CKDetailsContactsViewModel *)v26 setEntityName:v28];

    [(CKDetailsContactsViewModel *)v26 setLocationString:v23];
    [(CKDetailsContactsViewModel *)v26 setTuConversationStatusIsActive:v19];
    [(CKDetailsContactsViewModel *)v26 setCallType:a6];
    [(CKDetailsContactsViewModel *)v26 setShowsLocation:v17];
    [(CKDetailsContactsViewModel *)v26 setShowsMessageButton:v16];
    [(CKDetailsContactsViewModel *)v26 setShowsFaceTimeVideoButton:a9];
    [(CKDetailsContactsViewModel *)v26 setShowsPhoneButton:a10];
    [(CKDetailsContactsViewModel *)v26 setShowsScreenSharingButton:a11];
    [(CKDetailsContactsViewModel *)v26 setContact:v24];
    [(CKDetailsContactsViewModel *)v26 setIsPendingRecipient:a13];
    [(CKDetailsContactsViewModel *)v26 setVerified:a14];
    [(CKDetailsContactsViewModel *)v26 setIsSatellite:a15];
    [(CKDetailsContactsViewModel *)v26 setShowsTUConversationStatus:a16];
  }

  return v26;
}

@end
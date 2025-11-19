id sub_100001608(UIView *self, SEL a2)
{
  v3 = objc_alloc_init(NSMutableArray);
  [v3 addObject:self];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(UIView *)self subviews];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) allSubViews];
        [v3 addObjectsFromArray:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

id sub_100001FE4(uint64_t a1)
{
  v2 = [*(a1 + 32) isPreparingForFolderSharing];
  v3 = *(a1 + 32);
  if (v2)
  {

    return [v3 setIsLoading:1];
  }

  else
  {
    v4 = v3[4];

    return [v4 setHidden:0];
  }
}

void sub_1000022C8(id a1)
{
  qword_1000602E0 = [[UIShareFeatureStateFFSetting alloc] initWithDomainID:@"CloudDocsUI" featureID:@"CoOwners" valueMode:1 buildType:1];

  _objc_release_x1();
}

void sub_1000025A8(uint64_t a1, uint64_t a2)
{
  v3 = [NSString stringWithFormat:@"feature flag (%@): %@.%@", a2, *(a1 + 32), *(a1 + 40)];
  v4 = [*(a1 + 48) isEnabled];
  v5 = v3;
  v6 = @"NO";
  if (v4)
  {
    v6 = @"YES";
  }

  v7 = v6;
  v8 = cdui_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Feature Flag] Initializing %@ to value = %@", buf, 0x16u);
  }
}

void sub_100002E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100002E98(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002F28;
  block[3] = &unk_10004C9B0;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void sub_100002F28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v12 = WeakRetained;
    v3 = [WeakRetained progress];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 userInfo];
      v6 = [v5 objectForKey:NSProgressFileOperationKindKey];
      v7 = [v6 isEqualToString:NSProgressFileOperationKindUploading];
      if (v7)
      {
        v1 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
        [v1 localizedStringForKey:@"PROGRESS_UPLOADING_TEXT" value:@"Uploading" table:@"Localizable"];
      }

      else
      {
        [v4 localizedDescription];
      }
      v8 = ;
      v9 = [v12 titleLabel];
      [v9 setText:v8];

      if (v7)
      {

        v8 = v1;
      }

      v10 = [v4 localizedAdditionalDescription];
      v11 = [v12 progressLabel];
      [v11 setText:v10];
    }

    WeakRetained = v12;
  }
}

void sub_100003FD0(uint64_t a1)
{
  v1 = [*(a1 + 32) staticTableView];
  [v1 reloadData];
}

id sub_100004140(uint64_t a1)
{
  [*(a1 + 32) setModelSnapshot:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 updateSections];
}

id sub_1000044D4(void *a1)
{
  v1 = a1;
  v2 = [v1 contact];
  if (v2)
  {
    v3 = [v1 contact];
    v4 = [CNContactFormatter stringFromContact:v3 style:0];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v1 participant];
  if (![v4 length])
  {
    v6 = [v5 userIdentity];
    v7 = [v6 nameComponents];
    v8 = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:v7 style:1 options:0];

    v4 = v8;
  }

  if (![v4 length])
  {
    v9 = [v5 userIdentity];
    v10 = [v9 lookupInfo];
    v11 = [v10 emailAddress];

    v4 = v11;
  }

  if (![v4 length])
  {
    v12 = [v5 userIdentity];
    v13 = [v12 lookupInfo];
    v14 = [v13 phoneNumber];
    v15 = BRFormatPhoneNumber();

    v4 = v15;
  }

  return v4;
}

void sub_100004680(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 shareViewControllerStopSharing:*(a1 + 32) overrideAlert:1];
  }
}

void sub_1000046E0(uint64_t a1)
{
  v3 = [*(a1 + 32) share];
  v2 = [*(a1 + 40) participant];
  [v3 removeParticipant:v2];
}

void sub_10000474C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) setNavigationItemSpinner:0];
  v4 = v5;
  if (v5)
  {
    [*(a1 + 32) presentError:v5];
    v4 = v5;
  }
}

void sub_1000049E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100004A04(uint64_t a1, void *a2)
{
  [a2 preferredContentSize];
  v4 = v3;
  v6 = v5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPreferredContentSize:{v4, v6}];
}

void sub_100004CF4(uint64_t a1)
{
  v4 = [*(a1 + 32) staticTableView];
  v2 = [*(a1 + 32) staticTableView];
  v3 = [v2 indexPathForSelectedRow];
  [v4 deselectRowAtIndexPath:v3 animated:1];
}

void sub_100004F58(uint64_t a1, void *a2, void *a3)
{
  v25 = a2;
  v5 = a3;
  if (v25)
  {
    v6 = +[UIPasteboard generalPasteboard];
    [v6 setValue:v25 forPasteboardType:kUTTypeURL];

    LODWORD(v6) = UIAccessibilityAnnouncementNotification;
    v7 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v8 = [v7 localizedStringForKey:@"COPY_LINK_ACTION_ACCESSIBILITY_ANNOUNCEMENT" value:@"shared link copied to clipboard" table:@"Localizable"];
    UIAccessibilityPostNotification(v6, v8);
  }

  else
  {
    v9 = *(a1 + 32);
    if (v5)
    {
      [v9 presentError:v5];
    }

    else
    {
      v10 = [v9 delegate];
      v11 = [v10 shareViewControllerItemUTI:*(a1 + 32)];

      v12 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v13 = [v12 localizedStringForKey:@"COULD_NOT_COPY_LINK_MESSAGE_TEXT" value:@"Sorry table:{the item link couldn’t be copied.", @"Localizable"}];
      v14 = _CDAdaptLocalizedStringForItemType();
      v15 = [NSString localizedStringWithFormat:v14];

      v16 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v17 = [v16 localizedStringForKey:@"COULD_NOT_COPY_LINK_TITLE_TEXT" value:@"Couldn’t Copy Link" table:@"Localizable"];
      v18 = [UIAlertController alertControllerWithTitle:v17 message:v15 preferredStyle:1];

      v19 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v20 = [v19 localizedStringForKey:@"OK" value:@"OK" table:@"Localizable"];
      v21 = [UIAlertAction actionWithTitle:v20 style:0 handler:0];
      [v18 addAction:v21];

      [*(a1 + 32) presentViewController:v18 animated:1 completion:0];
    }
  }

  v22 = [*(a1 + 32) staticTableView];
  v23 = [*(a1 + 32) staticTableView];
  v24 = [v23 indexPathForSelectedRow];
  [v22 deselectRowAtIndexPath:v24 animated:1];

  [*(a1 + 32) setNavigationItemSpinner:0];
}

id sub_10000774C(uint64_t a1)
{
  [*(a1 + 32) setModalPresentationStyle:6];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 presentViewController:v3 animated:v4 completion:0];
}

void sub_10000835C(uint64_t a1)
{
  v2 = [*(a1 + 40) settings];
  [*(a1 + 32) setSettings:v2];

  v3 = [*(a1 + 32) delegate];
  [v3 shareViewController:_NSConcreteStackBlock modifyShare:3221225472 completion:{sub_1000084BC, &unk_10004CA80, *(a1 + 32), _NSConcreteStackBlock, 3221225472, sub_100008450, &unk_10004CB48, *(a1 + 32)}];
}

void sub_100008450(uint64_t a1)
{
  v3 = [*(a1 + 32) settings];
  v2 = [*(a1 + 32) share];
  [v3 applyToShare:v2];
}

id *sub_1000084BC(id *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return [result[4] presentError:?];
  }

  return result;
}

void sub_1000084CC(uint64_t a1)
{
  v2 = cdui_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[INFO] permission not granted, resetting to previous settings", v4, 2u);
  }

  v3 = [*(a1 + 40) settings];
  [*(a1 + 32) setSettings:v3];
}

uint64_t sub_100008558(uint64_t a1)
{
  v2 = cdui_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[INFO] permission granted", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_1000087DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  [v6 setNavigationItemSpinner:0];
  v8 = [v7 participants];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100008930;
  v13[3] = &unk_10004CBD8;
  v14 = *(a1 + 40);
  v9 = [v8 indexOfObjectPassingTest:v13];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = cdui_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_10002C904((a1 + 40), v10);
    }

    v11 = [*(a1 + 32) navigationController];
    v12 = [v11 popToViewController:*(a1 + 32) animated:1];
  }

  if (v5)
  {
    [*(a1 + 32) presentError:v5];
  }
}

id sub_100008930(uint64_t a1, void *a2)
{
  v3 = [a2 participantID];
  v4 = [*(a1 + 32) contact];
  v5 = [v4 participant];
  v6 = [v5 participantID];
  v7 = [v3 isEqualToString:v6];

  return v7;
}

void sub_10000AFA0(uint64_t a1)
{
  v2 = [*(a1 + 32) staticTableView];
  [v2 beginUpdates];

  v3 = [*(a1 + 32) staticTableView];
  v4 = [NSIndexSet indexSetWithIndex:*(*(a1 + 32) + 24)];
  [v3 reloadSections:v4 withRowAnimation:5];

  [*(a1 + 32) updateSections];
  v5 = [*(a1 + 32) staticTableView];
  [v5 endUpdates];
}

id sub_10000B41C(uint64_t a1)
{
  [*(a1 + 32) updateSections];
  v2 = *(a1 + 32);

  return [v2 _sendSettingsControllerDidChange];
}

void sub_10000B458(uint64_t a1)
{
  v2 = [*(a1 + 32) staticTableView];
  [v2 beginUpdates];

  v3 = [*(a1 + 32) staticTableView];
  v4 = [NSIndexSet indexSetWithIndex:*(*(a1 + 32) + 8)];
  [v3 reloadSections:v4 withRowAnimation:5];

  [*(a1 + 32) updateSections];
  v5 = *(a1 + 41);
  if (*(a1 + 40) != v5 && (*(a1 + 42) & 1) == 0)
  {
    v6 = [*(a1 + 32) staticTableView];
    v7 = [NSIndexSet indexSetWithIndex:*(*(a1 + 32) + 8) + 1];
    if (v5)
    {
      [v6 insertSections:v7 withRowAnimation:5];
    }

    else
    {
      [v6 deleteSections:v7 withRowAnimation:5];
    }
  }

  v8 = [*(a1 + 32) staticTableView];
  [v8 endUpdates];
}

id sub_10000B720(uint64_t a1)
{
  [*(a1 + 32) updateSections];
  v2 = *(a1 + 32);

  return [v2 _sendSettingsControllerDidChange];
}

void sub_10000B880(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = +[UIPasteboard generalPasteboard];
    [v4 setValue:v3 forPasteboardType:kUTTypeURL];
  }

  v7 = [*(a1 + 32) staticTableView];
  v5 = [*(a1 + 32) staticTableView];
  v6 = [v5 indexPathForSelectedRow];
  [v7 deselectRowAtIndexPath:v6 animated:1];
}

void sub_10000B9F4(uint64_t a1)
{
  v4 = [*(a1 + 32) staticTableView];
  v2 = [*(a1 + 32) staticTableView];
  v3 = [v2 indexPathForSelectedRow];
  [v4 deselectRowAtIndexPath:v3 animated:1];
}

void sub_10000DBF0(uint64_t a1)
{
  v1 = [*(a1 + 32) addressView];
  [v1 becomeFirstResponder];
}

void sub_10000DEE8(uint64_t a1)
{
  v1 = [*(a1 + 32) addressView];
  [v1 becomeFirstResponder];
}

void sub_10000E24C(uint64_t a1)
{
  v1 = [*(a1 + 32) addressView];
  [v1 becomeFirstResponder];
}

void sub_10000E2D4(id a1)
{
  v1 = [CNContactStore storeWithOptions:9];
  v2 = qword_1000602F0;
  qword_1000602F0 = v1;

  v3 = qword_1000602F0;

  [v3 requestAccessForEntityType:0 completionHandler:&stru_10004CCC8];
}

id sub_10000E3B0(void *a1, void *a2, void *a3, int a4, int a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = [CNMonogrammer descriptorForRequiredKeysIncludingImage:1];
  v28[0] = v12;
  v13 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
  v28[1] = v13;
  v28[2] = CNContactEmailAddressesKey;
  v28[3] = CNContactPhoneNumbersKey;
  v14 = +[CNContactViewController descriptorForRequiredKeys];
  v28[4] = v14;
  v15 = [NSArray arrayWithObjects:v28 count:5];

  v16 = 0;
  v17 = 0;
  if (v10 && a4)
  {
    v18 = [CNContact predicateForContactsMatchingEmailAddress:v10];
    v27 = 0;
    v19 = [v9 unifiedContactsMatchingPredicate:v18 keysToFetch:v15 error:&v27];
    v17 = v27;
    v16 = [v19 firstObject];
  }

  if (v16 || !a5)
  {
LABEL_11:
    if (v16)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v10 | v11)
  {
    if (v11)
    {
      v20 = v11;
    }

    else
    {
      v20 = [CNPhoneNumber phoneNumberWithStringValue:v10];
    }

    v21 = v20;
    v22 = [CNContact predicateForContactsMatchingPhoneNumber:v20];
    v26 = v17;
    v23 = [v9 unifiedContactsMatchingPredicate:v22 keysToFetch:v15 error:&v26];
    v24 = v26;

    v16 = [v23 firstObject];

    v17 = v24;
    goto LABEL_11;
  }

LABEL_12:
  v16 = [CNContact contactWithDisplayName:0 emailOrPhoneNumber:v10];
LABEL_13:

  return v16;
}

void sub_10000E93C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) count];
  v3 = *(a1 + 32);
  v4 = 1.0;
  if (!v2)
  {
    v5 = [v3 addressView];
    v6 = [v5 text];
    v7 = [v6 length];

    if (v7)
    {
      return;
    }

    v3 = *(a1 + 32);
    v4 = 0.0;
  }

  v8 = [v3 searchResultTable];
  [v8 setAlpha:v4];
}

void sub_10000FAC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000FAEC(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained presentingViewController];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000FBE8;
  v9[3] = &unk_10004CD18;
  objc_copyWeak(&v11, (a1 + 32));
  v12 = a2;
  v8 = v5;
  v10 = v8;
  [v7 dismissViewControllerAnimated:1 completion:v9];

  objc_destroyWeak(&v11);
}

void sub_10000FBE8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained completion];

  if (v2)
  {
    v3 = [WeakRetained completion];
    v3[2](v3, *(a1 + 48), *(a1 + 32));
  }
}

void sub_10000FDF0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

BOOL sub_100010D7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) valueForKey:*(a1 + 40)];
  if ([v4 isEqual:v3])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v4 integerValue];
      v5 = v6 == [v3 integerValue];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

void sub_100011E2C(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:@"remact"];
  v3 = NSSelectorFromString(v2);

  v4 = [*(a1 + 32) objectForKey:@"param"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [*(a1 + 40) cellForRowAtIndexPath:*(a1 + 48)];
  }

  v7 = v6;

  [*(a1 + 56) performSelector:v3 withObject:v7];
}

id sub_100012F00(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = _UIShareHeaderFooterView;
  return objc_msgSendSuper2(&v2, "layoutSubviews");
}

uint64_t sub_100013CA0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 existingRecipients];
  v5 = [v3 address];

  LODWORD(v3) = [v4 containsObject:v5];
  return v3 ^ 1;
}

void sub_100013F3C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 40) copy];
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  *(v4 + 48) = v3;

  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(a1 + 40) count]);
  v7 = [CNMonogrammer descriptorForRequiredKeysIncludingImage:1];
  v17[0] = v7;
  v8 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
  v17[1] = v8;
  v17[2] = CNContactEmailAddressesKey;
  v9 = [NSArray arrayWithObjects:v17 count:3];

  v10 = *(a1 + 32);
  v11 = *(v10 + 48);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000140FC;
  v14[3] = &unk_10004CEF8;
  v14[4] = v10;
  v15 = v9;
  v16 = v6;
  v12 = v6;
  v13 = v9;
  [v11 enumerateObjectsUsingBlock:v14];
  [*(a1 + 32) processUpdate:v12 changedObjects:0];

  objc_autoreleasePoolPop(v2);
}

void sub_1000140FC(uint64_t a1, void *a2)
{
  v8 = a2;
  if (([v8 isGroup] & 1) == 0)
  {
    v3 = *(*(a1 + 32) + 16);
    v4 = [v8 contact];
    v5 = [v4 identifier];
    v6 = [v3 unifiedContactWithIdentifier:v5 keysToFetch:*(a1 + 40) error:0];

    if (v6)
    {
      [v8 setContact:v6];
    }

    v7 = objc_opt_new();
    [v7 setComposeRecipient:v8];
    [*(a1 + 48) addObject:v7];
  }
}

void sub_100015314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100015344(id *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  objc_sync_enter(v4);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100015430;
  v6[3] = &unk_10004CF38;
  v6[4] = a1[4];
  v7 = v3;
  v5 = v3;
  objc_copyWeak(&v9, a1 + 6);
  v8 = a1[5];
  dispatch_async(&_dispatch_main_q, v6);

  objc_destroyWeak(&v9);
  objc_sync_exit(v4);
}

void sub_100015430(uint64_t a1)
{
  v2 = [*(a1 + 32) folderSharingPreparationError];
  if (v2)
  {
  }

  else if (*(a1 + 40))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained cancel];

    [*(a1 + 32) setFolderSharingPreparationError:*(a1 + 40)];
  }

  [*(a1 + 32) setHasPreparedForFolderSharing:1];
  v4 = [*(a1 + 32) viewController];
  [v4 folderSharingPreparationDidComplete];

  v5 = *(a1 + 48);

  dispatch_group_leave(v5);
}

void sub_100015608(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015704;
  block[3] = &unk_10004CF88;
  v15 = a4;
  v16 = v8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v17 = v7;
  v18 = v9;
  v19 = v10;
  v11 = v7;
  v12 = v8;
  v13 = v15;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100015704(uint64_t a1)
{
  if (*(a1 + 32) || !*(a1 + 40))
  {
    v2 = *(a1 + 64);
    v3 = *(a1 + 48);
    v4 = *(*(a1 + 64) + 16);

    v4();
  }

  else
  {
    v5 = cdui_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] document is sub-item of folder share", v7, 2u);
    }

    v6 = [[BRCKShareSubitem alloc] initWithShare:*(a1 + 48)];
    objc_storeStrong((*(a1 + 56) + 112), *(a1 + 48));
    objc_storeStrong((*(a1 + 56) + 16), *(a1 + 40));
    (*(*(a1 + 64) + 16))();
  }
}

void sub_100015938(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (v7)
  {
    [*(a1 + 32) _enqueueCopyShareURLOperation:v7 completion:0];
    v10 = [*(a1 + 32) shareCreationSema];
    dispatch_semaphore_signal(v10);
  }

  else if ([v8 code] == 14 || objc_msgSend(v9, "code") == 7)
  {
    v11 = [*(a1 + 32) workerQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100015AC4;
    v16[3] = &unk_10004C920;
    v16[4] = *(a1 + 32);
    [v11 addOperationWithBlock:v16];
    goto LABEL_7;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015D14;
  block[3] = &unk_10004CFD8;
  block[4] = *(a1 + 32);
  v13 = v7;
  v14 = v9;
  v15 = a4;
  dispatch_async(&_dispatch_main_q, block);

  v11 = v13;
LABEL_7:
}

void sub_100015AC4(uint64_t a1)
{
  v2 = [*(a1 + 32) itemURL];
  v8 = 0;
  [v2 getPromisedItemResourceValue:&v8 forKey:NSURLUbiquitousItemIsUploadedKey error:0];
  v3 = v8;

  if ([v3 BOOLValue])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100015C78;
    block[3] = &unk_10004C920;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v4 = dispatch_time(0, 500000000);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100015C80;
    v6[3] = &unk_10004C920;
    v6[4] = *(a1 + 32);
    dispatch_after(v4, &_dispatch_main_q, v6);
    *(*(a1 + 32) + 8) = 1;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100015C88;
    v5[3] = &unk_10004C920;
    v5[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, v5);
  }
}

id sub_100015C88(uint64_t a1)
{
  result = [*(a1 + 32) isShowingSpinner];
  if (result)
  {
    v3 = cdui_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[INFO] Couldn't get share because the item is not in the cloud yet: creating overview controller anyway", v4, 2u);
    }

    [*(a1 + 32) setInitialSharing:1];
    return [*(a1 + 32) _loadInitialViewController];
  }

  return result;
}

void sub_100015D28(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v16 = [v6 domain];
    if ([v16 isEqualToString:BRCloudDocsErrorDomain])
    {
      v17 = [v7 code];

      if (v17 == 20)
      {
        v18 = cdui_default_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[INFO] document isn't shared, doing existing subshare preflight check", buf, 2u);
        }

        v19 = dispatch_time(0, 1500000000);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100016114;
        block[3] = &unk_10004C920;
        block[4] = *(a1 + 32);
        dispatch_after(v19, &_dispatch_main_q, block);
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_10001616C;
        v24[3] = &unk_10004D028;
        v20 = *(a1 + 32);
        v25 = *(a1 + 40);
        [v20 preflightAndPrepareIfFolderShare:0 completion:v24];
        v15 = v25;
        goto LABEL_17;
      }
    }

    else
    {
    }

    v12 = cdui_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[INFO] copy share failed", buf, 2u);
    }

    goto LABEL_27;
  }

  v8 = cdui_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[INFO] copy BR share finished", buf, 2u);
  }

  v9 = *(a1 + 32);
  if (*(v9 + 36) != 1 || !*(v9 + 16))
  {
    if ([v5 publicPermission] == 1)
    {
      v10 = [v5 participants];
      v11 = [v10 count];

      v12 = cdui_default_log();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
      if (v11 <= 1)
      {
        if (v13)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[INFO] got a preexisting disabled share--treat as initial share", buf, 2u);
        }

        [v5 setPublicPermission:3];
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_100016188;
        v22[3] = &unk_10004D028;
        v14 = *(a1 + 32);
        v23 = *(a1 + 40);
        [v14 preflightAndPrepareIfFolderShare:v5 completion:v22];
        v15 = v23;
LABEL_17:

        goto LABEL_28;
      }

      if (v13)
      {
        *buf = 0;
        v21 = "[INFO] got a preexisting share with participants";
        goto LABEL_26;
      }
    }

    else
    {
      v12 = cdui_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v21 = "[INFO] got a preexisting public share";
LABEL_26:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v21, buf, 2u);
      }
    }

LABEL_27:

    (*(*(a1 + 40) + 16))();
    goto LABEL_28;
  }

  [v9 changeToTopLevelSharedFolderURL];
LABEL_28:
}

id sub_100016114(uint64_t a1)
{
  result = [*(a1 + 32) isShowingSpinner];
  if (result)
  {
    [*(a1 + 32) setInitialSharing:1];
    v3 = *(a1 + 32);

    return [v3 _loadInitialViewController];
  }

  return result;
}

void sub_10001628C(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100016350;
  v7[3] = &unk_10004D078;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = *(a1 + 48);
  v6 = v3;
  dispatch_async(&_dispatch_main_q, v7);
}

void sub_100016350(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = cdui_default_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_10002CB90(v2);
    }

    v6 = [*(a1 + 40) viewController];
    [v6 presentError:*(a1 + 32)];

    [*(a1 + 40) shareViewControllerDismiss:0];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] existing subshare preflight check finished", buf, 2u);
    }

    [*(a1 + 40) _prepareForFolderSharingIfNeeded];
    if (*(a1 + 48))
    {
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v7 = [*(a1 + 40) itemURL];
      v8 = BRSharingCreateShareForItemAtURL();
      v9 = 0;

      [v8 setPublicPermission:3];
      (*(*(a1 + 56) + 16))();
    }
  }
}

void sub_1000165F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100016608(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100016620(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000167B0(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016860;
  block[3] = &unk_10004D140;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100016860(id *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = [v2 domain];
    if ([v3 isEqualToString:BRCloudDocsErrorDomain])
    {
      v4 = [a1[4] code];

      if (v4 == 38)
      {
        v5 = [a1[4] userInfo];
        v6 = [v5 objectForKeyedSubscript:BRFailedURLsKey];

        v29 = v6;
        if (![v6 count])
        {
          v7 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
          v13 = [v7 localizedStringForKey:@"ALERT_EXISTING_SHARED_ITEMS_MESSAGE_UNKNOWN_ITEMS" value:@"This folder already contains shared items. People who currently have access to these items may lose it." table:@"Localizable"];
LABEL_19:

          v18 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
          v19 = [v18 localizedStringForKey:@"ALERT_EXISTING_SHARED_ITEMS_TITLE" value:@"Sharing this folder will change who can read and edit all items within it." table:@"Localizable"];
          v20 = [UIAlertController alertControllerWithTitle:v19 message:v13 preferredStyle:1];

          v21 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
          v22 = [v21 localizedStringForKey:@"ALERT_SHARE_BUTTON_TITLE" value:@"Share" table:@"Localizable"];
          v32[0] = _NSConcreteStackBlock;
          v32[1] = 3221225472;
          v32[2] = sub_100016D9C;
          v32[3] = &unk_10004D118;
          v23 = a1[6];
          v32[4] = a1[5];
          v33 = v23;
          v24 = [UIAlertAction actionWithTitle:v22 style:0 handler:v32];

          v25 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
          v26 = [v25 localizedStringForKey:@"ALERT_CANCEL_BUTTON_TITLE" value:@"Cancel" table:@"Localizable"];
          v30[0] = _NSConcreteStackBlock;
          v30[1] = 3221225472;
          v30[2] = sub_100016E38;
          v30[3] = &unk_10004CB20;
          v31 = a1[6];
          v27 = [UIAlertAction actionWithTitle:v26 style:1 handler:v30];

          [v20 addAction:v24];
          [v20 addAction:v27];
          [a1[5] presentViewController:v20 animated:1 completion:0];

          return;
        }

        if ([v6 count] == 1)
        {
          v7 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
          v8 = [v7 localizedStringForKey:@"ALERT_EXISTING_SHARED_ITEMS_MESSAGE_ONE_ITEM" value:@"This folder already contains a shared item “%@”. People who currently have access to this item may lose it." table:@"Localizable"];
          v9 = [v6 firstObject];
          v10 = [v9 lastPathComponent];
          [NSString localizedStringWithFormat:v8, v10, v28, v6];
        }

        else
        {
          v14 = [v6 count];
          v15 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
          v7 = v15;
          if (v14 == 2)
          {
            v8 = [v15 localizedStringForKey:@"ALERT_EXISTING_SHARED_ITEMS_MESSAGE_TWO_ITEMS" value:@"This folder already contains shared items “%@” and “%@”. People who currently have access to these items may lose it." table:@"Localizable"];
            v9 = [v6 objectAtIndexedSubscript:0];
            v10 = [v9 lastPathComponent];
            v16 = [v6 objectAtIndexedSubscript:1];
            v17 = [v16 lastPathComponent];
            v13 = [NSString localizedStringWithFormat:v8, v10, v17, v6];

LABEL_18:
            goto LABEL_19;
          }

          v8 = [v15 localizedStringForKey:@"ALERT_EXISTING_SHARED_ITEMS_MESSAGE" value:@"This folder already contains shared items table:{including “%@” and %lu others. People who currently have access to these items may lose it.", @"Localizable"}];
          v9 = [v6 firstObject];
          v10 = [v9 lastPathComponent];
          +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v8, v10, [v6 count] - 1, v6);
        }
        v13 = ;
        goto LABEL_18;
      }
    }

    else
    {
    }

    v12 = a1[4];
    v11 = *(a1[6] + 2);
  }

  else
  {
    v11 = *(a1[6] + 2);
  }

  v11();
}

void sub_100016D9C(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100016E28;
  v2[3] = &unk_10004D0F0;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _processSubitemsWithProcessType:2 completion:v2];
}

void sub_100016E38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:NSCocoaErrorDomain code:3072 userInfo:&__NSDictionary0__struct];
  (*(v1 + 16))(v1, v2);
}

void sub_100017524(uint64_t a1)
{
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  [v2 openURL:*(a1 + 32)];
  [*(a1 + 40) shareViewControllerDismiss:0];
}

void sub_1000179BC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 appName];
  v4 = [v2 _alertControllerForLegacyApplication:v3];

  [*(a1 + 32) presentViewController:v4 animated:1 completion:0];
}

void sub_100017C00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100017C24(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v7)
    {
      v4 = [WeakRetained itemURL];
      if (v4 == v7)
      {
      }

      else
      {
        v5 = [WeakRetained itemURL];
        v6 = [v7 isEqual:v5];

        if ((v6 & 1) == 0)
        {
          [WeakRetained setItemURL:v7];
          [WeakRetained _presentedURLChanged];
        }
      }
    }

    else
    {
      [WeakRetained _presentedURLDeleted];
    }
  }
}

void sub_100017E54(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = cdui_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_10002CC00(a1);
    }
  }

  else
  {
    v8 = [v5 UIImage];
    v9 = v8;
    if (v8)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100017F74;
      v10[3] = &unk_10004CA08;
      v10[4] = *(a1 + 40);
      v9 = v8;
      v11 = v9;
      dispatch_async(&_dispatch_main_q, v10);
    }
  }

  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) stopAccessingSecurityScopedResource];
  }
}

void sub_100017F74(uint64_t a1)
{
  [*(a1 + 32) setThumbnail:*(a1 + 40)];
  v2 = [*(a1 + 32) viewController];
  [v2 updateThumbnail];
}

void sub_10001853C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001860C;
  v10[3] = &unk_10004CFD8;
  v7 = *(a1 + 32);
  v11 = v5;
  v12 = v7;
  v14 = *(a1 + 40);
  v13 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, v10);
}

void sub_10001860C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) _sanitizeForAvailablePermissions:?];
    [*(a1 + 40) _setupWithShare:*(a1 + 32) error:0 initialShare:*(a1 + 56)];
    v9 = [*(a1 + 40) itemName];
    v2 = [*(a1 + 40) viewController];
    [v2 setItemName:v9];

    return;
  }

  v3 = (a1 + 48);
  v4 = [*(a1 + 48) domain];
  if ([v4 isEqualToString:CKErrorDomain] && (objc_msgSend(*v3, "code") == 4 || objc_msgSend(*v3, "code") == 3))
  {
    v5 = [*(a1 + 40) reachabilityMonitor];
    v6 = [v5 isNetworkReachable];

    if ((v6 & 1) == 0)
    {
      v7 = cdui_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[INFO] Decrypting share failed with network error, retrying after reachability change", buf, 2u);
      }

      *(*(a1 + 40) + 8) = 1;
      return;
    }
  }

  else
  {
  }

  v8 = cdui_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    sub_10002CC78((a1 + 48));
  }

  [*(a1 + 40) shareViewController:0 presentError:*(a1 + 48)];
}

id sub_100019270(uint64_t a1)
{
  result = [*(a1 + 32) _updateReachabilityStatus:1];
  if (*(a1 + 40) == 1)
  {
    result = *(a1 + 32);
    if (*(result + 8) == 1 && *(result + 19) == 1)
    {

      return [result _updateCloudKitShare];
    }
  }

  return result;
}

void sub_100019BD8(uint64_t a1)
{
  v2 = cdui_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[INFO] Dismissal for fullscreen complete, requesting representation", buf, 2u);
  }

  v3 = [*(a1 + 32) containedNavController];
  [v3 dismissViewControllerAnimated:0 completion:0];

  v4 = +[UIColor clearColor];
  v5 = [*(a1 + 32) parentViewController];
  v6 = [v5 view];
  v7 = [v6 window];
  [v7 setBackgroundColor:v4];

  v8 = [*(a1 + 32) containedNavController];
  v9 = [v8 view];
  [v9 removeFromSuperview];

  v10 = [*(a1 + 32) containedNavController];
  [v10 removeFromParentViewController];

  v11 = [*(a1 + 32) hostingViewController];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100019D84;
  v13[3] = &unk_10004D230;
  v12 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v12;
  [v11 _representFullscreenAfterActivityDismissal:v13];
}

uint64_t sub_100019D84(uint64_t a1)
{
  v2 = cdui_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[INFO] Representation complete", v5, 2u);
  }

  v3 = [*(a1 + 32) fullscreenRepresentationGroup];
  dispatch_group_leave(v3);

  return (*(*(a1 + 40) + 16))();
}

void sub_100019E18(uint64_t a1)
{
  v2 = [*(a1 + 32) fullscreenRepresentationGroup];
  dispatch_group_wait(v2, 0xFFFFFFFFFFFFFFFFLL);

  v3 = *(a1 + 40);

  dispatch_async(&_dispatch_main_q, v3);
}

void sub_10001A270(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!a3)
  {
    v6 = [*(a1 + 32) sharingAppName];
    v7 = [*(a1 + 32) itemName];
    v8 = objc_alloc_init(LPiCloudSharingMetadata);
    v9 = [*(a1 + 32) sharingAppBundleIdentifier];
    [v8 setApplicationBundleIdenfier:v9];

    v44 = v6;
    [v8 setApplication:v6];
    v43 = v7;
    [v8 setTitle:v7];
    if ([*(a1 + 32) isFolderShare])
    {
      v10 = [UIImage imageNamed:@"Folder140pt"];
      v11 = objc_alloc_init(LPImageProperties);
      [v11 setType:5];
      v12 = [[LPImage alloc] initWithPlatformImage:v10 properties:v11];
    }

    else
    {
      v13 = [v8 applicationBundleIdenfier];
      v11 = [LSApplicationProxy applicationProxyForIdentifier:v13];

      v10 = [UIImage _iconForResourceProxy:v11 format:1];
      v12 = [[LPImage alloc] initWithPlatformImage:v10];
    }

    v14 = v12;
    [v8 setIcon:v12];

    v15 = objc_alloc_init(LPLinkMetadata);
    [v15 setURL:v5];
    [v15 setSpecialization:v8];
    v16 = [*(a1 + 40) activityType];
    if ([v16 isEqualToString:UIActivityTypeMail])
    {
      v17 = [*(a1 + 32) _mailTemplate];
      v18 = [v17 length];

      if (v18)
      {
        v19 = [[LPLinkHTMLTextGenerator alloc] initWithURL:v5];
        [v19 setMetadata:v15];
        v41 = [v19 HTMLFragmentString];
        v45[0] = @"SHARE_URL";
        v20 = [v5 absoluteString];
        v21 = [v20 stringByRemovingPercentEncoding];
        v46[0] = v21;
        v45[1] = @"ITEM_NAME";
        v22 = [v8 title];
        v46[1] = v22;
        v45[2] = @"APP_NAME";
        [v8 application];
        v23 = v42 = v10;
        v45[3] = @"LINK_FRAGMENT";
        v46[2] = v23;
        v46[3] = v41;
        v24 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:4];

        v25 = *(a1 + 32);
        v26 = *(a1 + 40);
        v27 = [v25 _mailSubject];
        v28 = [v27 _ui_stringWithTemplateDictionary:v24];
        [v26 setSubject:v28];

        v29 = [v26 mailComposeViewController];
        v30 = [*(a1 + 32) _mailTemplate];
        v31 = [v30 _ui_stringWithTemplateDictionary:v24];
        [v29 setMessageBody:v31 isHTML:1];

        v10 = v42;
        v32 = [v26 mailComposeViewController];

        [v32 setKeyboardVisible:1];
        goto LABEL_15;
      }
    }

    else
    {
    }

    v33 = [*(a1 + 40) activityType];
    v34 = [v33 isEqualToString:UIActivityTypeMessage];

    if (!v34)
    {
LABEL_16:
      (*(*(a1 + 48) + 16))();

      goto LABEL_17;
    }

    v19 = *(a1 + 40);
    v35 = [v15 dataRepresentation];
    v36 = [*(a1 + 32) _messageTemplate];
    v37 = [v36 length];

    v38 = [v19 messageComposeViewController];
    v39 = v38;
    if (v37)
    {
      v40 = [*(a1 + 32) _messageTemplate];
      [v39 setBody:v40];
    }

    else
    {
      [v38 addRichLinkData:v35 withWebpageURL:v5];

      v39 = [v19 messageComposeViewController];
      [v39 setBody:0];
    }

LABEL_15:
    goto LABEL_16;
  }

  (*(*(a1 + 48) + 16))();
LABEL_17:
}

void sub_10001BCA4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5 && !a3)
  {
    if ([*(a1 + 32) currentUserIsOwner])
    {
      v6 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      v7 = [v6 localizedStringForKey:@"SHARED_BY_ME_TEXT" value:@"Shared by Me" table:@"Localizable"];
    }

    else
    {
      v8 = *(a1 + 32);
      v9 = [v5 ownerNameComponents];
      v6 = [v8 ownerStringForPerson:v9];

      v10 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
      if (v6)
      {
        v11 = [v10 localizedStringForKey:@"SHARED_BY_OTHER_TEXT" value:@"Shared by %@" table:@"Localizable"];
        v7 = [NSString localizedStringWithFormat:v11, v6];
      }

      else
      {
        v7 = [v10 localizedStringForKey:@"SHARED_BY_UNKNOWN_OTHER_TEXT" value:@"Shared" table:@"Localizable"];
      }
    }

    if (v7)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001BE98;
      block[3] = &unk_10004CA08;
      block[4] = *(a1 + 32);
      v13 = v7;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

void sub_10001BE98(uint64_t a1)
{
  [*(a1 + 32) setSharedByModifiedByText:*(a1 + 40)];
  v2 = [*(a1 + 32) viewController];
  [v2 updateFolderSharingHeader];
}

void sub_10001BEF0(uint64_t a1)
{
  [*(a1 + 32) setSharedByModifiedByText:*(a1 + 40)];
  v2 = [*(a1 + 32) viewController];
  [v2 updateFolderSharingHeader];
}

void *sub_10001CB6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = cdui_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[INFO] got a progress subscriber for file upload", buf, 2u);
  }

  (*(*(a1 + 32) + 16))();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001CC78;
  v7[3] = &unk_10004D2D0;
  v8 = *(a1 + 32);
  v5 = objc_retainBlock(v7);

  return v5;
}

void sub_10001CC8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = cdui_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10002CED0();
  }

  v5 = [v3 BOOLValue];
  if (v5)
  {
    v6 = cdui_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10002CF04();
    }

    [*(*(*(a1 + 48) + 8) + 40) finishObserving];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;

    if (*(a1 + 32))
    {
      dispatch_group_leave(*(a1 + 40));
    }
  }
}

void sub_10001CD54(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = cdui_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10002CF38();
  }

  [*(a1 + 32) setShare:v6];
  [*(a1 + 32) _setContainerFromID:v5];

  v8 = [*(a1 + 32) shareCreationSema];
  dispatch_semaphore_signal(v8);

  dispatch_group_leave(*(a1 + 40));
}

void sub_10001CDF8(uint64_t a1)
{
  v1 = [*(a1 + 32) shareCreationSema];
  dispatch_semaphore_wait(v1, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_10001CE40(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = dispatch_time(0, 12000000000);
  if (dispatch_group_wait(v2, v3))
  {
    v4 = cdui_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10002CF6C();
    }

    goto LABEL_16;
  }

  v5 = [*(a1 + 40) share];
  if ([v5 publicPermission] == 1)
  {

    goto LABEL_14;
  }

  v6 = [*(a1 + 40) share];
  v7 = [v6 currentUserParticipant];
  v8 = [*(a1 + 40) share];
  v9 = [v8 owner];
  v10 = [v7 isEqual:v9];

  if (!v10)
  {
LABEL_14:
    v4 = cdui_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10002D0A0();
    }

    goto LABEL_16;
  }

  v11 = cdui_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_10002CFEC();
  }

  dispatch_group_enter(*(a1 + 32));
  v12 = [*(a1 + 40) share];
  v13 = [v12 publicPermission];

  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10001D18C;
  v37[3] = &unk_10004D368;
  v37[4] = v13;
  v30 = _NSConcreteStackBlock;
  v31 = 3221225472;
  v32 = sub_10001D198;
  v33 = &unk_10004D3B8;
  v16 = *(a1 + 56);
  v36 = v13;
  *&v17 = v16;
  *(&v17 + 1) = *(a1 + 40);
  v29 = v17;
  v18 = *(a1 + 48);
  v19 = *(a1 + 32);
  *&v20 = v18;
  *(&v20 + 1) = v19;
  v34 = v29;
  v35 = v20;
  [v14 shareViewController:v15 modifyShare:v37 completion:&v30];
  v21 = *(a1 + 32);
  v22 = dispatch_time(0, 12000000000);
  if (dispatch_group_wait(v21, v22))
  {
    v23 = cdui_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      sub_10002D020();
    }
  }

  v4 = v34;
LABEL_16:

  v24 = *(a1 + 72);
  v25 = [*(a1 + 40) share];
  (*(v24 + 16))(v24, v25);

  if (*(a1 + 64))
  {
    [NSProgress _removeSubscriber:?];
  }

  v26 = *(*(*(a1 + 80) + 8) + 40);
  if (v26)
  {
    [v26 finishObserving];
  }

  [*(*(a1 + 40) + 192) finishObserving];
  v27 = *(a1 + 40);
  v28 = *(v27 + 192);
  *(v27 + 192) = 0;
}

void sub_10001D198(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001D278;
  v8[3] = &unk_10004D390;
  v9 = *(a1 + 32);
  v10 = v4;
  v5 = *(a1 + 64);
  v6 = *(a1 + 48);
  v11 = *(a1 + 40);
  v14 = v5;
  v12 = v6;
  v13 = *(a1 + 56);
  v7 = v4;
  dispatch_async(&_dispatch_main_q, v8);
}

void sub_10001D278(uint64_t a1)
{
  v2 = [*(a1 + 32) pathExtension];
  v3 = *(*(a1 + 48) + 344);
  v4 = *(a1 + 72);
  v5 = v2;
  if (*(a1 + 40))
  {
    BRTelemetryReportShareInvitation();
    [*(a1 + 48) shareViewController:*(a1 + 56) presentError:*(a1 + 40)];
  }

  else
  {
    BRTelemetryReportShareInvitation();
    [*(a1 + 48) shareViewControllerDidChooseTransport:*(a1 + 32)];
  }

  dispatch_group_leave(*(a1 + 64));
}

void sub_10001D394(uint64_t a1)
{
  v2 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v3 = [v2 localizedStringForKey:@"STOP_SHARING_MESSAGE_TEXT" value:@"If you stop sharing table:{other people will no longer have access to “%@”.", @"Localizable"}];
  v4 = [*(a1 + 32) itemUTI];
  v5 = _CDAdaptLocalizedStringForItemType();
  v6 = [*(a1 + 32) itemName];
  v7 = [NSString localizedStringWithFormat:v5, v6];

  v8 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v9 = [v8 localizedStringForKey:@"STOP_SHARING_TITLE_TEXT" value:@"Stop Sharing?" table:@"Localizable"];
  v10 = [UIAlertController alertControllerWithTitle:v9 message:v7 preferredStyle:1];

  v11 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v12 = [v11 localizedStringForKey:@"STOP_SHARING_CANCEL_TEXT" value:@"Cancel" table:@"Localizable"];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10001D684;
  v18[3] = &unk_10004D190;
  v18[4] = *(a1 + 32);
  v13 = [UIAlertAction actionWithTitle:v12 style:1 handler:v18];
  [v10 addAction:v13];

  v14 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v15 = [v14 localizedStringForKey:@"STOP_SHARING_OK_TEXT" value:@"Stop Sharing" table:@"Localizable"];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001D6CC;
  v17[3] = &unk_10004D190;
  v17[4] = *(a1 + 32);
  v16 = [UIAlertAction actionWithTitle:v15 style:2 handler:v17];
  [v10 addAction:v16];

  [*(a1 + 32) presentViewController:v10 animated:1 completion:0];
}

void sub_10001D684(uint64_t a1)
{
  v1 = [*(a1 + 32) hostingViewController];
  [v1 _dismissViewControllerWithError:0];
}

void sub_10001DA60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = cdui_default_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      *buf = 138412290;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[INFO] stop sharing failed with error %@", buf, 0xCu);
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10001DBF0;
    v8[3] = &unk_10004CA08;
    v8[4] = *(a1 + 32);
    v9 = v3;
    dispatch_async(&_dispatch_main_q, v8);
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[INFO] stop sharing succeeded, dismissing", buf, 2u);
    }

    v6 = [*(a1 + 32) hostingViewController];
    [v6 _shareWasMadePrivate];

    v7 = [*(a1 + 32) hostingViewController];
    [v7 _dismissViewControllerWithError:0];
  }
}

void sub_10001DC90(uint64_t a1)
{
  v2 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v3 = [v2 localizedStringForKey:@"LEAVE_SHARE_MESSAGE_TEXT" value:@"Removing yourself will delete “%@” from all your devices." table:@"Localizable"];
  v4 = [*(a1 + 32) itemUTI];
  v5 = _CDAdaptLocalizedStringForItemType();
  v6 = [*(a1 + 32) itemName];
  v7 = [NSString localizedStringWithFormat:v5, v6];

  v8 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v9 = [v8 localizedStringForKey:@"LEAVE_SHARE_TITLE_TEXT" value:@"Remove Yourself?" table:@"Localizable"];
  v10 = [UIAlertController alertControllerWithTitle:v9 message:v7 preferredStyle:1];

  v11 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v12 = [v11 localizedStringForKey:@"LEAVE_SHARE_CANCEL_TEXT" value:@"Cancel" table:@"Localizable"];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10001DF80;
  v18[3] = &unk_10004D190;
  v18[4] = *(a1 + 32);
  v13 = [UIAlertAction actionWithTitle:v12 style:1 handler:v18];
  [v10 addAction:v13];

  v14 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
  v15 = [v14 localizedStringForKey:@"LEAVE_SHARE_CONTINUE_TEXT" value:@"Continue" table:@"Localizable"];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001DFC8;
  v17[3] = &unk_10004D190;
  v17[4] = *(a1 + 32);
  v16 = [UIAlertAction actionWithTitle:v15 style:0 handler:v17];
  [v10 addAction:v16];

  [*(a1 + 32) presentViewController:v10 animated:1 completion:0];
}

void sub_10001DF80(uint64_t a1)
{
  v1 = [*(a1 + 32) hostingViewController];
  [v1 _dismissViewControllerWithError:0];
}

id sub_10001DFC8(uint64_t a1)
{
  v2 = cdui_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[INFO] leaving share: falling through to stop sharing case", v4, 2u);
  }

  return [*(a1 + 32) _actuallyStopSharing];
}

uint64_t sub_10001E330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a4);
  }

  return result;
}

void sub_10001E34C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 share];
  v9 = [v8 recordID];
  v10 = [v7 objectForKeyedSubscript:v9];

  (*(*(a1 + 40) + 16))();
}

void sub_10001E550(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [BRShareSaveOperation shouldRetryShareSaveOnError:v6];
    v8 = cdui_default_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v7)
    {
      if (v9)
      {
        *buf = 138412546;
        v22 = v5;
        v23 = 2112;
        v24 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[INFO] Saving share %@ failed with a recoverable error %@; retrying", buf, 0x16u);
      }

      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10001E814;
      v18[3] = &unk_10004D4A8;
      v17 = *(a1 + 2);
      v10 = *(&v17 + 1);
      v11 = a1[6];
      v12 = a1[7];
      *&v13 = v11;
      *(&v13 + 1) = v12;
      v19 = v17;
      v20 = v13;
      [v17 _refetchShareAndRetry:v18];
    }

    else
    {
      if (v9)
      {
        *buf = 138412546;
        v22 = v5;
        v23 = 2112;
        v24 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[INFO] Saving share %@ failed with a non-recoverable error %@", buf, 0x16u);
      }

      [a1[4] setShare:0];
      (*(a1[7] + 2))();
    }
  }

  else
  {
    [a1[4] setShare:v5];
    v14 = cdui_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[INFO] Saving share succeeded", buf, 2u);
    }

    [a1[5] shareDidChange];
    (*(a1[7] + 2))();
    v15 = [a1[4] hostingViewController];
    if ([a1[4] mode])
    {
      v16 = [v5 _copyWithoutPersonalInfo];
      [v15 _shareDidChange:v16];
    }

    else
    {
      [v15 _shareDidChange:0];
    }
  }
}

void sub_10001EB48(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001EC20;
  v11[3] = &unk_10004D4D0;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = v6;
  v13 = v7;
  v14 = v5;
  v15 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(&_dispatch_main_q, v11);
}

uint64_t sub_10001EC20(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    [*(a1 + 40) setInitialSharing:?];
    v2 = *(a1 + 32);
  }

  v3 = *(a1 + 48);
  v4 = *(*(a1 + 56) + 16);

  return v4();
}

void sub_10001EC70(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v4 = [*(a1 + 32) folderSharingPreparationError];
  objc_sync_exit(v2);

  if (v4)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v3 = [*(a1 + 32) workerQueue];
    [v3 addOperation:*(a1 + 40)];
  }
}

void sub_10001ED28(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = [a2 lastObject];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001EE08;
  v12[3] = &unk_10004D4D0;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v15 = v7;
  v16 = v9;
  v10 = v7;
  v11 = v6;
  dispatch_async(&_dispatch_main_q, v12);
}

uint64_t sub_10001EE08(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    [*(a1 + 40) setInitialSharing:?];
    v2 = *(a1 + 32);
  }

  v3 = *(a1 + 48);
  v4 = *(*(a1 + 56) + 16);

  return v4();
}

void sub_10001F14C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001F228;
  v11[3] = &unk_10004D078;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = v6;
  v13 = v7;
  v14 = v5;
  v15 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(&_dispatch_main_q, v11);
}

uint64_t sub_10001F228(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) _handleCopyShareURLError:?];
  }

  else
  {
    [*(a1 + 40) setShareURL:*(a1 + 48)];
  }

  result = *(a1 + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10001F518(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001F5F0;
  v10[3] = &unk_10004D4D0;
  v7 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, v10);
}

void sub_10001F5F0(uint64_t a1)
{
  [*(a1 + 32) setShareURL:*(a1 + 40)];
  v2 = *(a1 + 56);
  v3 = [*(a1 + 32) shareURL];
  (*(v2 + 16))(v2, v3, *(a1 + 48));
}

void sub_10001F660(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001F6F4;
  v3[3] = &unk_10004D258;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(&_dispatch_main_q, v3);
}

void sub_10001F6F4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) shareURL];
  (*(v1 + 16))(v1, v2, 0);
}

void sub_10001F758(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = a3;
  v7 = [v4 share];
  v6 = [v7 URL];
  (*(v3 + 16))(v3, v6, v5);
}

void sub_10001FAEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001FB08(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) view];
  [v3 removeFromSuperview];

  (*(*(a1 + 64) + 16))();
  if (v8)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 80);
    BRTelemetryReportShareInvitation();
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    [WeakRetained shareViewController:*(a1 + 56) presentError:v8];
  }
}

void sub_10001FFA0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasSuffix:@">"])
  {
    v4 = [v3 substringToIndex:{objc_msgSend(v3, "length") - 1}];
    v5 = [v4 substringFromIndex:{objc_msgSend(v3, "rangeOfString:options:", @"<", 4) + 1}];

    v3 = v5;
  }

  if (IMStringIsEmail())
  {
    v6 = *(a1 + 32);
    v7 = [[CKUserIdentityLookupInfo alloc] initWithEmailAddress:v3];
    [v6 addObject:v7];

    v8 = cdui_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[INFO] Looking up recipient %@ as email", &v14, 0xCu);
    }
  }

  else
  {
    IsPhoneNumber = IMStringIsPhoneNumber();
    v10 = cdui_default_log();
    v11 = v10;
    if (IsPhoneNumber)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v14 = 138412290;
        v15 = v3;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[INFO] Looking up recipient %@ as phone#", &v14, 0xCu);
      }

      v12 = *(a1 + 32);
      v13 = [[CKUserIdentityLookupInfo alloc] initWithPhoneNumber:v3];
      [v12 addObject:v13];
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v3;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[WARNING] Participant %@ is neither email nor phone number. Trying to add as phone number anyway.", &v14, 0xCu);
      }

      [*(a1 + 40) addObject:v3];
    }
  }
}

void sub_1000201D4(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = objc_opt_new();
  if (v9)
  {
    [v6 setObject:v9 forKey:NSUnderlyingErrorKey];
  }

  if (v5)
  {
    [v6 setObject:v5 forKey:@"addr"];
  }

  v7 = *(a1 + 32);
  v8 = [NSError errorWithDomain:@"_UIShareErrorDomain" code:0 userInfo:v6];
  (*(v7 + 16))(v7, v8);
}

void sub_1000202C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = cdui_default_log();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_10002D110();
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000204BC;
    block[3] = &unk_10004D258;
    v22 = *(a1 + 48);
    v21 = v6;
    dispatch_async(&_dispatch_main_q, block);

    v9 = v22;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10002D184();
    }

    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000204D0;
    v17[3] = &unk_10004D630;
    v17[4] = v10;
    v12 = v5;
    v13 = *(a1 + 56);
    v18 = v12;
    v19 = v13;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100020714;
    v14[3] = &unk_10004D050;
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    [v10 shareViewController:v11 modifyShare:v17 completion:v14];

    v9 = v18;
  }
}

void sub_1000204D0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) allowInvitingOthers])
  {
    v4 = [v3 owner];
    v20 = [v4 isCurrentUser];
  }

  else
  {
    v20 = 0;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v22;
    if (v20)
    {
      v10 = @"Y";
    }

    else
    {
      v10 = @"N";
    }

    v19 = v10;
    *&v7 = 138412802;
    v18 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        [v12 setPermission:{*(a1 + 48), v18, v19}];
        if (*(a1 + 48) == 3)
        {
          v13 = +[UIShareFeature coOwners];
          v14 = [v13 isEnabled];

          if (v14)
          {
            if (v20)
            {
              v15 = 2;
            }

            else
            {
              v15 = [v12 role];
            }

            [v12 setRole:v15];
          }
        }

        v16 = cdui_default_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v17 = *(a1 + 48);
          *buf = v18;
          v26 = v12;
          v27 = 2048;
          v28 = v17;
          v29 = 2112;
          v30 = v19;
          _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] adding participant %@ with permission %li, isAbleToInvite: %@", buf, 0x20u);
        }

        [v3 addParticipant:v12];
      }

      v8 = [v5 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v8);
  }
}

void sub_100020714(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = sub_100016608;
  v10[4] = sub_100016618;
  v11 = v4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100020820;
  block[3] = &unk_10004D658;
  v9 = v10;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5 = v4;
  dispatch_async(&_dispatch_main_q, block);

  _Block_object_dispose(v10, 8);
}

uint64_t sub_100020820(uint64_t a1)
{
  v2 = (a1 + 48);
  v3 = *(*(*(a1 + 48) + 8) + 40);
  if (v3)
  {
    v12 = NSUnderlyingErrorKey;
    v13 = v3;
    v4 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v5 = [NSError errorWithDomain:@"_UIShareErrorDomain" code:0 userInfo:v4];
    v6 = *(*v2 + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = cdui_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_10002D1B8(v2);
    }

    [*(a1 + 32) presentError:*(*(*(a1 + 48) + 8) + 40)];
  }

  else
  {
    v9 = cdui_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10002D230();
    }
  }

  v10 = *(*(*(a1 + 48) + 8) + 40);
  return (*(*(a1 + 40) + 16))();
}

void sub_1000209A0(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setPermission:*(a1 + 40)];
  v4 = cdui_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10002D264(v3, (a1 + 40), v4);
  }

  [*(a1 + 32) addObject:v3];
}

void sub_100021404(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [NSString stringWithFormat:@"#%@#", a2];
  [v5 replaceOccurrencesOfString:v7 withString:v6 options:2 range:{0, objc_msgSend(*(a1 + 32), "length")}];
}

void sub_1000214AC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

uint64_t *sub_100021510@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void sub_10002300C(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  v2 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [*(a1 + 32) participants];
  v3 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v27;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        v8 = [*(a1 + 40) currentParticipants];
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_1000232CC;
        v25[3] = &unk_10004D760;
        v25[4] = v7;
        v9 = [v8 indexOfObjectPassingTest:v25];

        if (v9 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v10 = objc_opt_new();
        }

        else
        {
          v11 = [*(a1 + 40) currentParticipants];
          v12 = [v11 objectAtIndex:v9];
          v10 = [v12 copy];
        }

        [v10 setParticipant:v7];
        [v2 addObject:v10];
      }

      v4 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v4);
  }

  [*(a1 + 40) setCurrentParticipants:v2];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = v2;
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v21 + 1) + 8 * j);
        if (([v18 fullyLookedUp] & 1) == 0)
        {
          [*(a1 + 40) _scheduleParticipantLookup:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v21 objects:v30 count:16];
    }

    while (v15);
  }

  [*(a1 + 40) processUpdate:v13 changedObjects:0];
  objc_autoreleasePoolPop(context);
}

id sub_1000232CC(uint64_t a1, void *a2)
{
  v3 = [a2 participant];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_1000233C4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) currentParticipants];
  v4 = [v3 indexOfObject:*(a1 + 40)];

  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [*(a1 + 32) currentParticipants];
    v6 = [v5 objectAtIndex:v4];

    if (([v6 fullyLookedUp] & 1) == 0)
    {
      v7 = cdui_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v6 participant];
        v9 = [v8 userIdentity];
        v10 = [v9 lookupInfo];
        v11 = [v10 emailAddress];
        v12 = v11;
        if (!v11)
        {
          v39 = [v6 participant];
          v37 = [v39 userIdentity];
          v35 = [v37 lookupInfo];
          v12 = [v35 phoneNumber];
        }

        *buf = 138412290;
        v44 = v12;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[INFO] looking up participant %@", buf, 0xCu);
        if (!v11)
        {
        }
      }

      v13 = [v6 copy];
      v14 = +[CNContactViewController descriptorForRequiredKeys];
      v42[0] = v14;
      v15 = +[CNQuickActionsView descriptorForRequiredKeys];
      v42[1] = v15;
      v42[2] = *(*(a1 + 32) + 24);
      v16 = [NSArray arrayWithObjects:v42 count:3];

      v17 = +[_UIShareInvitationAddParticipantController contactStore];
      v18 = [v6 participant];
      v40 = v16;
      v41 = 0;
      v38 = v17;
      v19 = [v18 unifiedContactsInStore:v17 keysToFetch:v16 error:&v41];
      v36 = v41;
      v20 = [v19 firstObject];

      if (v20)
      {
        v21 = cdui_default_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[INFO] found record in contact store", buf, 2u);
        }
      }

      else
      {
        v22 = [*(a1 + 40) participant];
        v21 = [v22 userIdentity];

        v23 = [v21 nameComponents];
        v34 = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:v23 style:0 options:0];

        v24 = [v21 lookupInfo];
        v25 = [v24 emailAddress];
        v26 = v25;
        if (v25)
        {
          v27 = v25;
        }

        else
        {
          v28 = [v21 lookupInfo];
          v27 = [v28 phoneNumber];
        }

        v20 = [CNContact contactWithDisplayName:v34 emailOrPhoneNumber:v27];
        v29 = cdui_default_log();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v44 = v34;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "[INFO] no record found, synthesizing record from user identity (%@)", buf, 0xCu);
        }
      }

      [v13 setContact:v20];
      [v13 setFullyLookedUp:1];
      v30 = [*(a1 + 32) currentParticipants];
      v31 = [v30 mutableCopy];

      [v31 replaceObjectAtIndex:v4 withObject:v13];
      [*(a1 + 32) setCurrentParticipants:v31];
      v32 = *(a1 + 32);
      v33 = [NSSet setWithObject:v13];
      [v32 processUpdate:v31 changedObjects:v33];
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000258B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak(&a19);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000258F4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a3 && a2 && !a4)
  {
    v6 = a3;
    v7 = a2;
    dispatch_assert_queue_V2(&_dispatch_main_q);
    v9 = [*(a1 + 32) _ownerLabelTextForName:v7 displayHandle:v6];

    v8 = [*(*(a1 + 32) + 112) ownerLabel];
    [v8 setAttributedText:v9];
  }
}

void sub_1000259C0(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = a2;
  v10 = a4;
  if (v9 && !a6)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100025AA0;
    block[3] = &unk_10004CCF0;
    v12 = *(a1 + 32);
    v13 = v9;
    v14 = v10;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_100025AA0(uint64_t a1)
{
  v3 = [*(a1 + 32) _ownerLabelTextForName:*(a1 + 40) displayHandle:*(a1 + 48)];
  v2 = [*(*(a1 + 32) + 112) ownerLabel];
  [v2 setAttributedText:v3];
}

void sub_100025B18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 shareViewControllerDidFinishActivity:WeakRetained];
}

void sub_100026B18(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 traitCollection];
  [v1 updatePreferredContentSize:v2];
}

uint64_t sub_100027350(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = *(a1 + 32);
    v4 = [NSError errorWithDomain:NSCocoaErrorDomain code:3072 userInfo:&__NSDictionary0__struct];
    [v3 presentError:v4];
  }

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

void sub_1000275E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [*(a1 + 32) presentError:v3];
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_100027838(uint64_t a1)
{
  v2 = cdui_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[INFO] activity controller preparation finished", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_100027CB8(uint64_t a1)
{
  v2 = cdui_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10002D5D4(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = dispatch_group_create();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100027D9C;
  block[3] = &unk_10004CCF0;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v15 = v10;
  v16 = v11;
  v17 = v12;
  v13 = v10;
  dispatch_group_async(v13, &_dispatch_main_q, block);
  dispatch_group_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_100027D9C(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = [*(a1 + 40) delegate];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) activity];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100027F04;
  v10[3] = &unk_10004D908;
  v5 = *(a1 + 48);
  v10[4] = *(a1 + 40);
  v11 = v5;
  v12 = v2;
  v13 = *(a1 + 32);
  v6 = v2;
  [v6 shareViewController:v3 willStartActivity:v4 completion:v10];

  dispatch_group_enter(*(a1 + 32));
  v7 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000283A4;
  v8[3] = &unk_10004D930;
  v8[4] = v7;
  v9 = *(a1 + 32);
  [v6 shareViewControllerCopyShareURL:v7 completion:v8];
}

void sub_100027F04(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = cdui_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10002D60C(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  v12 = [*(a1 + 32) embeddedActivityViewController];
  [v12 setVcForActivityPresentation:v3];

  v13 = cdui_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_10002D644(a1 + 32);
  }

  v14 = [*(a1 + 40) activity];
  v15 = [v14 activityType];

  v16 = [*(a1 + 32) share];
  v17 = [v16 publicPermission];

  if (([v15 isEqualToString:UIActivityTypeMail] & 1) == 0 && (objc_msgSend(v15, "isEqualToString:", UIActivityTypeMessage) & 1) == 0)
  {
    v18 = *(a1 + 32);
    v19 = [*(a1 + 40) activity];
    v20 = [v19 applicationExtension];
    v21 = [v20 identifier];
    v22 = [v18 isHomeroomID:v21];

    if (v17 == 1 && (v22 & 1) == 0)
    {
      v23 = cdui_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        sub_10002D6D0(v23, v24, v25, v26, v27, v28, v29, v30);
      }

      v31 = [*(a1 + 48) shareViewControllerItemUTI:*(a1 + 32)];
      v32 = [_UIShareInvitationModalAddParticipantController alloc];
      v33 = [*(a1 + 32) share];
      v34 = [(_UIShareInvitationModalAddParticipantController *)v32 initWithShare:v33 uti:v31];

      dispatch_group_enter(*(a1 + 56));
      v38 = _NSConcreteStackBlock;
      v39 = 3221225472;
      v40 = sub_100028224;
      v41 = &unk_10004D8E0;
      v42 = *(a1 + 32);
      v43 = *(a1 + 48);
      v44 = *(a1 + 56);
      v35 = v15;
      v45 = v35;
      [(_UIShareInvitationModalAddParticipantController *)v34 setCompletion:&v38];
      if ([v35 isEqualToString:{@"com.apple.CloudDocsUI.CopyShareLinkActivity", v38, v39, v40, v41, v42}])
      {
        v36 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
        v37 = [v36 localizedStringForKey:@"COPY_LINK_ACTION_TEXT" value:@"Copy Link" table:@"Localizable"];
        [(_UIShareInvitationModalAddParticipantController *)v34 setContinueActionTitle:v37];
      }

      [v3 presentViewController:v34 animated:1 completion:0];
    }
  }

  dispatch_group_leave(*(a1 + 56));
}

void sub_100028224(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = [NSError errorWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
    [v6 presentError:v7];

    [*(a1 + 40) shareViewControllerDismiss:*(a1 + 32)];
  }

  else
  {
    dispatch_group_enter(*(a1 + 48));
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = *(a1 + 56);
    v11 = [*(v9 + 128) defaultPermission];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100028360;
    v12[3] = &unk_10004D8B8;
    v12[4] = *(a1 + 32);
    v13 = *(a1 + 48);
    [v8 shareViewController:v9 addParticipants:v5 activityType:v10 permission:v11 completion:v12];
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_100028360(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) presentError:a2];
  }

  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void sub_1000283A4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) setShareURL:a2];
  if (v5)
  {
    [*(a1 + 32) presentError:v5];
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_100028554(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) navigationItem];
  v2 = [v3 rightBarButtonItem];
  [v2 _setHidden:v1];
}

double sub_100028B24(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7)
{
  if (a5 != 0.0 && a6 != 0.0)
  {
    v10 = a7;
    if (a7 == 0.0)
    {
      v14 = +[UIScreen mainScreen];
      v15 = [v14 traitCollection];
      [v15 displayScale];
      v10 = v16;

      if (v10 == 0.0)
      {
        v10 = 1.0;
      }
    }

    v24.origin.x = a1;
    v24.origin.y = a2;
    v24.size.width = a3;
    v24.size.height = a4;
    Width = CGRectGetWidth(v24);
    v25.origin.x = a1;
    v25.origin.y = a2;
    v25.size.width = a3;
    v25.size.height = a4;
    v18 = fmin(Width / a5, CGRectGetHeight(v25) / a6);
    v19 = ceil(v10 * (a5 * v18)) / v10;
    v20 = ceil(v10 * (a6 * v18)) / v10;
    v26.origin.x = a1;
    v26.origin.y = a2;
    v26.size.width = a3;
    v26.size.height = a4;
    v21 = CGRectGetWidth(v26);
    v27.origin.x = a1;
    v27.origin.y = a2;
    v27.size.width = v19;
    v27.size.height = v20;
    v22 = a1 + floor(v10 * ((v21 - CGRectGetWidth(v27)) * 0.5)) / v10;
    v28.origin.x = a1;
    v28.origin.y = a2;
    v28.size.width = a3;
    v28.size.height = a4;
    CGRectGetHeight(v28);
    v29.origin.x = v22;
    v29.origin.y = a2;
    v29.size.width = v19;
    v29.size.height = v20;
    CGRectGetHeight(v29);
    if (v19 >= 1.0)
    {
      return v19;
    }

    else
    {
      return 1.0;
    }
  }

  return a3;
}

void sub_100029508(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v18 = v2;
    v19 = v3;
    v5 = cdui_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10002D7B8(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000295D0;
    v15[3] = &unk_10004CA08;
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v16 = v13;
    v17 = v14;
    dispatch_async(&_dispatch_main_q, v15);
  }
}

id sub_1000295D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = _BRShareOverviewActivityViewController;
  return objc_msgSendSuper2(&v3, "_performActivity:", v1);
}

void sub_100029758(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100029814;
  v7[3] = &unk_10004D0A0;
  v5 = v2;
  v6 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  v10 = *(a1 + 56);
  [v5 shareActivityController:v3 prepareActivityPresentation:v4 completion:v7];
}

uint64_t sub_100029814(uint64_t a1)
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if ([*(a1 + 32) shareActivityControllerShouldAddParticipants:*(a1 + 40)])
  {
    [*(a1 + 40) setupActivityDelegate];
  }

  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void sub_100029E1C(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  (*(*(a1 + 48) + 16))();
  if (v3)
  {
    [*(a1 + 32) mailComposeController:*(a1 + 40) didFinishWithResult:0 error:v3];
  }
}

id sub_100029FCC(void *a1, uint64_t a2)
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v4 = *(a1[6] + 16);
  if (a2)
  {
    v4();
    v5 = a1[4];
    v6 = a1[5];

    return [v5 messageComposeViewController:v6 didFinishWithResult:0];
  }

  else
  {

    return (v4)();
  }
}

void sub_10002C904(id *a1, NSObject *a2)
{
  v3 = [*a1 contact];
  v4 = 138412290;
  v5 = v3;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "[ERROR] Participant %@ should have been modified, but just went away instead", &v4, 0xCu);
}

void sub_10002C9A0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = @"N";
  if (*(a1 + 16))
  {
    v3 = @"Y";
  }

  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[DEBUG] applyToShare has ACL: %@, share: %@", &v4, 0x16u);
}

void sub_10002CB90(uint64_t *a1)
{
  sub_100021510(a1, __stack_chk_guard);
  sub_1000214E8();
  sub_1000214F4();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10002CC00(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1000214D4();
  sub_100021500();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10002CC78(uint64_t *a1)
{
  sub_100021510(a1, __stack_chk_guard);
  v2 = *(v1 + 40);
  v3 = *(v2 + 104);
  v4 = *(v2 + 136);
  sub_1000214D4();
  sub_100021500();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_10002CD10()
{
  sub_1000214C8();
  sub_1000214F4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002CDC0(uint64_t *a1)
{
  sub_100021510(a1, __stack_chk_guard);
  sub_1000214D4();
  sub_100021500();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10002D0D4()
{
  sub_1000214C8();
  sub_1000214F4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002D1B8(uint64_t *a1)
{
  sub_100021510(a1, __stack_chk_guard);
  v2 = *(*(v1 + 8) + 40);
  sub_1000214E8();
  sub_1000214F4();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10002D264(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v3 = *a2;
  v4 = 138412546;
  v5 = a1;
  v6 = 2048;
  v7 = v3;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[DEBUG] adding participant %@ with permission %li", &v4, 0x16u);
}

void sub_10002D388(uint64_t a1)
{
  v1 = [sub_100028874(a1) description];
  sub_10000FE0C();
  sub_100028864();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10002D414(uint64_t a1)
{
  v1 = [sub_100028874(a1) description];
  sub_10000FE0C();
  sub_100028864();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10002D4A0(uint64_t a1)
{
  v6 = [sub_100028874(a1) description];
  sub_100028864();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10002D548(void *a1)
{
  v1 = [a1 settings];
  sub_10000FE0C();
  sub_100028864();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10002D644(uint64_t a1)
{
  v1 = [sub_100028874(a1) share];
  sub_10000FE0C();
  sub_100028864();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10002D708(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "[ERROR] Attempting to assign image with zero width or height: %{public}@", &v2, 0xCu);
}

void sub_10002D828(void *a1, NSObject *a2)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2048;
  v6 = [a1 modalPresentationStyle];
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] Presenting share activity %@ as mode %li", &v3, 0x16u);
}
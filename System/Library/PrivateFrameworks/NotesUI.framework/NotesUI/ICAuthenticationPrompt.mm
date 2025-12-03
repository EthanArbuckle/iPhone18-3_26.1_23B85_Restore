@interface ICAuthenticationPrompt
+ (id)promptForChangingMode:(signed __int16)mode account:(id)account;
+ (id)promptForDeletingNotes:(id)notes;
+ (id)promptForIntent:(unint64_t)intent object:(id)object;
- (BOOL)allowsAlternativeAuthentication;
- (BOOL)allowsAuthentication;
- (BOOL)allowsBiometricAuthentication;
- (BOOL)allowsCustomPasswordAuthentication;
- (BOOL)allowsDevicePasswordAuthentication;
- (BOOL)forcesAlternativeAuthentication;
- (BOOL)forcesSecondaryAuthentication;
- (BOOL)hasDivergedKey;
- (BOOL)hasPassphrase;
- (BOOL)isEqual:(id)equal;
- (BOOL)needsAuthentication;
- (BOOL)needsCloudAccount;
- (BOOL)needsDevicePassword;
- (BOOL)needsKeychain;
- (BOOL)needsSecondaryAuthentication;
- (BOOL)needsUserRecordUpdate;
- (ICAuthenticationPrompt)initWithIntent:(unint64_t)intent object:(id)object;
- (ICCloudSyncingObject)authenticationObject;
- (NSArray)unauthenticatedNotes;
- (NSString)cloudAccountName;
- (NSString)customAccountName;
- (id)description;
- (unint64_t)hash;
- (void)update;
- (void)updateStrings;
- (void)updateStringsForAddLock;
- (void)updateStringsForChangeMode;
- (void)updateStringsForChangeModeFrom;
- (void)updateStringsForChangeModeTo;
- (void)updateStringsForChangePassword;
- (void)updateStringsForDeleteMixedNotes;
- (void)updateStringsForDeleteMultipleNotes;
- (void)updateStringsForDeleteNotes;
- (void)updateStringsForDeleteSingleNote;
- (void)updateStringsForRemoveLock;
- (void)updateStringsForResetPassword;
- (void)updateStringsForToggleBiometrics;
- (void)updateStringsForViewAttachment;
- (void)updateStringsForViewNote;
@end

@implementation ICAuthenticationPrompt

- (NSString)customAccountName
{
  v3 = MEMORY[0x1E69B7658];
  object = [(ICAuthenticationPrompt *)self object];
  managedObjectContext = [object managedObjectContext];
  v6 = [v3 allActiveAccountsInContext:managedObjectContext];
  if ([v6 count] < 2)
  {
    ic_trimmedString = 0;
  }

  else
  {
    account = [(ICAuthenticationPrompt *)self account];
    localizedName = [account localizedName];
    ic_trimmedString = [localizedName ic_trimmedString];
  }

  return ic_trimmedString;
}

- (NSString)cloudAccountName
{
  mEMORY[0x1E69B7A28] = [MEMORY[0x1E69B7A28] sharedInstance];
  accountStore = [mEMORY[0x1E69B7A28] accountStore];
  account = [(ICAuthenticationPrompt *)self account];
  identifier = [account identifier];
  v7 = [accountStore accountWithIdentifier:identifier];
  username = [v7 username];

  return username;
}

- (void)updateStrings
{
  [(ICAuthenticationPrompt *)self setTitle:&stru_1F4F94F00];
  [(ICAuthenticationPrompt *)self setReason:0];
  [(ICAuthenticationPrompt *)self setFallbackButtonTitle:0];
  [(ICAuthenticationPrompt *)self setTouchBarReason:0];
  if ([(ICAuthenticationPrompt *)self authenticationMechanism]== 1 || [(ICAuthenticationPrompt *)self authenticationMechanism]== 3)
  {
    if ([(ICAuthenticationPrompt *)self allowsCustomPasswordAuthentication])
    {
      customAccountName = [(ICAuthenticationPrompt *)self customAccountName];

      if (customAccountName)
      {
        v4 = __ICLocalizedFrameworkString_impl(@"Try again or enter the notes password for your “%@” account.", @"Try again or enter the notes password for your “%@” account.", 0, 1);
        v5 = MEMORY[0x1E696AEC0];
        customAccountName2 = [(ICAuthenticationPrompt *)self customAccountName];
        v7 = [v5 localizedStringWithFormat:v4, customAccountName2];
        [(ICAuthenticationPrompt *)self setReason:v7];

LABEL_11:
        goto LABEL_12;
      }
    }

    if ([(ICAuthenticationPrompt *)self allowsCustomPasswordAuthentication])
    {
      v8 = @"Try again or enter your notes password.";
LABEL_10:
      v4 = __ICLocalizedFrameworkString_impl(v8, v8, 0, 1);
      [(ICAuthenticationPrompt *)self setReason:v4];
      goto LABEL_11;
    }

    if ([(ICAuthenticationPrompt *)self allowsDevicePasswordAuthentication])
    {
      v8 = @"Try again or enter the device passcode.";
      goto LABEL_10;
    }
  }

LABEL_12:
  if ([(ICAuthenticationPrompt *)self authenticationMechanism]== 1 || [(ICAuthenticationPrompt *)self authenticationMechanism]== 2 || [(ICAuthenticationPrompt *)self authenticationMechanism]== 3)
  {
    if ([(ICAuthenticationPrompt *)self allowsDevicePasswordAuthentication])
    {
      v9 = @"Enter Passcode";
    }

    else
    {
      v9 = @"Enter Password";
    }

    v10 = __ICLocalizedFrameworkString_impl(v9, v9, 0, 1);
    [(ICAuthenticationPrompt *)self setFallbackButtonTitle:v10];
  }

  intent = [(ICAuthenticationPrompt *)self intent];
  if (intent <= 3)
  {
    if (intent > 1)
    {
      if (intent == 2)
      {

        [(ICAuthenticationPrompt *)self updateStringsForAddLock];
      }

      else
      {

        [(ICAuthenticationPrompt *)self updateStringsForRemoveLock];
      }
    }

    else if (intent)
    {
      if (intent == 1)
      {

        [(ICAuthenticationPrompt *)self updateStringsForViewAttachment];
      }
    }

    else
    {

      [(ICAuthenticationPrompt *)self updateStringsForViewNote];
    }
  }

  else if (intent <= 5)
  {
    if (intent == 4)
    {

      [(ICAuthenticationPrompt *)self updateStringsForDeleteNotes];
    }

    else
    {

      [(ICAuthenticationPrompt *)self updateStringsForChangePassword];
    }
  }

  else
  {
    switch(intent)
    {
      case 6:

        [(ICAuthenticationPrompt *)self updateStringsForResetPassword];
        break;
      case 7:

        [(ICAuthenticationPrompt *)self updateStringsForChangeMode];
        break;
      case 8:

        [(ICAuthenticationPrompt *)self updateStringsForToggleBiometrics];
        break;
    }
  }
}

- (void)updateStringsForViewNote
{
  v3 = __ICLocalizedFrameworkString_impl(@"View Note", @"View Note", 0, 1);
  [(ICAuthenticationPrompt *)self setTitle:v3];

  if ([(ICAuthenticationPrompt *)self authenticationMechanism]== 2)
  {
    if (![(ICAuthenticationPrompt *)self allowsCustomPasswordAuthentication]|| ([(ICAuthenticationPrompt *)self customAccountName], (v4 = objc_claimAutoreleasedReturnValue()) == 0) || (v5 = v4, v6 = [(ICAuthenticationPrompt *)self hasDivergedKey], v5, v6))
    {
      if ([(ICAuthenticationPrompt *)self allowsCustomPasswordAuthentication])
      {
        v7 = @"Use your fingerprint or enter your notes password to view this note.";
      }

      else
      {
        if (![(ICAuthenticationPrompt *)self allowsDevicePasswordAuthentication])
        {
          return;
        }

        v7 = @"Use your fingerprint or enter the device passcode to view locked notes.";
      }

      goto LABEL_15;
    }

    v11 = @"Use your fingerprint or enter the password you created for notes in your “%@” account to view this note.";
LABEL_19:
    v15 = __ICLocalizedFrameworkString_impl(v11, v11, 0, 1);
    v12 = MEMORY[0x1E696AEC0];
    customAccountName = [(ICAuthenticationPrompt *)self customAccountName];
    v14 = [v12 localizedStringWithFormat:v15, customAccountName];
    [(ICAuthenticationPrompt *)self setReason:v14];

    goto LABEL_20;
  }

  if ([(ICAuthenticationPrompt *)self authenticationMechanism]== 4)
  {
    customAccountName2 = [(ICAuthenticationPrompt *)self customAccountName];
    if (customAccountName2)
    {
      v9 = customAccountName2;
      hasDivergedKey = [(ICAuthenticationPrompt *)self hasDivergedKey];

      if (!hasDivergedKey)
      {
        v11 = @"Enter the password you created for notes in your “%@” account.";
        goto LABEL_19;
      }
    }

    v7 = @"Enter your locked notes password.";
  }

  else
  {
    if ([(ICAuthenticationPrompt *)self authenticationMechanism]!= 5)
    {
      return;
    }

    v7 = @"View this note.";
  }

LABEL_15:
  v15 = __ICLocalizedFrameworkString_impl(v7, v7, 0, 1);
  [(ICAuthenticationPrompt *)self setReason:?];
LABEL_20:
}

- (void)updateStringsForViewAttachment
{
  v3 = __ICLocalizedFrameworkString_impl(@"View Attachment", @"View Attachment", 0, 1);
  [(ICAuthenticationPrompt *)self setTitle:v3];

  if ([(ICAuthenticationPrompt *)self authenticationMechanism]== 4)
  {
    v4 = __ICLocalizedFrameworkString_impl(@"This attachment is locked using a previous password.", @"This attachment is locked using a previous password.", 0, 1);
    [(ICAuthenticationPrompt *)self setReason:v4];
  }
}

- (void)updateStringsForAddLock
{
  v3 = __ICLocalizedFrameworkString_impl(@"Lock Note", @"Lock Note", 0, 1);
  [(ICAuthenticationPrompt *)self setTitle:v3];

  if ([(ICAuthenticationPrompt *)self authenticationMechanism]!= 2)
  {
    if ([(ICAuthenticationPrompt *)self authenticationMechanism]== 4)
    {
      customAccountName = [(ICAuthenticationPrompt *)self customAccountName];

      if (customAccountName)
      {
        v5 = @"Enter the password you created for notes in your “%@” account.";
        goto LABEL_8;
      }

      v10 = @"Enter your locked notes password.";
    }

    else
    {
      if ([(ICAuthenticationPrompt *)self authenticationMechanism]!= 5)
      {
        return;
      }

      v10 = @"Lock this note.";
    }

LABEL_17:
    v11 = __ICLocalizedFrameworkString_impl(v10, v10, 0, 1);
    [(ICAuthenticationPrompt *)self setReason:?];
    goto LABEL_18;
  }

  if (![(ICAuthenticationPrompt *)self allowsCustomPasswordAuthentication]|| ([(ICAuthenticationPrompt *)self customAccountName], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    if ([(ICAuthenticationPrompt *)self allowsCustomPasswordAuthentication])
    {
      v10 = @"Use your fingerprint or enter your notes password to lock this note.";
    }

    else
    {
      if (![(ICAuthenticationPrompt *)self allowsDevicePasswordAuthentication])
      {
        return;
      }

      v10 = @"Use your fingerprint or enter the device passcode to lock this note.";
    }

    goto LABEL_17;
  }

  v5 = @"Use your fingerprint or enter the password you created for notes in your “%@” account to lock this note.";
LABEL_8:
  v11 = __ICLocalizedFrameworkString_impl(v5, v5, 0, 1);
  v7 = MEMORY[0x1E696AEC0];
  customAccountName2 = [(ICAuthenticationPrompt *)self customAccountName];
  v9 = [v7 localizedStringWithFormat:v11, customAccountName2];
  [(ICAuthenticationPrompt *)self setReason:v9];

LABEL_18:
}

- (void)updateStringsForRemoveLock
{
  v3 = __ICLocalizedFrameworkString_impl(@"Remove Lock", @"Remove Lock", 0, 1);
  [(ICAuthenticationPrompt *)self setTitle:v3];

  if ([(ICAuthenticationPrompt *)self authenticationMechanism]== 2)
  {
    if (![(ICAuthenticationPrompt *)self allowsCustomPasswordAuthentication]|| ([(ICAuthenticationPrompt *)self customAccountName], (v4 = objc_claimAutoreleasedReturnValue()) == 0) || (v5 = v4, v6 = [(ICAuthenticationPrompt *)self hasDivergedKey], v5, v6))
    {
      if ([(ICAuthenticationPrompt *)self allowsCustomPasswordAuthentication])
      {
        v7 = @"Use your fingerprint or enter your notes password to remove the lock from this note.";
      }

      else
      {
        if (![(ICAuthenticationPrompt *)self allowsDevicePasswordAuthentication])
        {
          return;
        }

        v7 = @"Use your fingerprint or enter the device passcode to remove the lock from this note.";
      }

      goto LABEL_15;
    }

    v11 = @"Use your fingerprint or enter the password you created for notes in your “%@” account to remove the lock from this note.";
LABEL_19:
    v15 = __ICLocalizedFrameworkString_impl(v11, v11, 0, 1);
    v12 = MEMORY[0x1E696AEC0];
    customAccountName = [(ICAuthenticationPrompt *)self customAccountName];
    v14 = [v12 localizedStringWithFormat:v15, customAccountName];
    [(ICAuthenticationPrompt *)self setReason:v14];

    goto LABEL_20;
  }

  if ([(ICAuthenticationPrompt *)self authenticationMechanism]== 4)
  {
    customAccountName2 = [(ICAuthenticationPrompt *)self customAccountName];
    if (customAccountName2)
    {
      v9 = customAccountName2;
      hasDivergedKey = [(ICAuthenticationPrompt *)self hasDivergedKey];

      if (!hasDivergedKey)
      {
        v11 = @"Enter the password you created for notes in your “%@” account.";
        goto LABEL_19;
      }
    }

    v7 = @"Enter your locked notes password.";
  }

  else
  {
    if ([(ICAuthenticationPrompt *)self authenticationMechanism]!= 5)
    {
      return;
    }

    v7 = @"Remove the lock.";
  }

LABEL_15:
  v15 = __ICLocalizedFrameworkString_impl(v7, v7, 0, 1);
  [(ICAuthenticationPrompt *)self setReason:?];
LABEL_20:
}

- (void)updateStringsForDeleteNotes
{
  unauthenticatedNotes = [(ICAuthenticationPrompt *)self unauthenticatedNotes];
  if ([unauthenticatedNotes count])
  {
    notes = [(ICAuthenticationPrompt *)self notes];
    v5 = [notes count];
    unauthenticatedNotes2 = [(ICAuthenticationPrompt *)self unauthenticatedNotes];
    v7 = [unauthenticatedNotes2 count];

    if (v5 > v7)
    {

      [(ICAuthenticationPrompt *)self updateStringsForDeleteMixedNotes];
      return;
    }
  }

  else
  {
  }

  unauthenticatedNotes3 = [(ICAuthenticationPrompt *)self unauthenticatedNotes];
  v9 = [unauthenticatedNotes3 count];

  if (v9 == 1)
  {

    [(ICAuthenticationPrompt *)self updateStringsForDeleteSingleNote];
  }

  else
  {

    [(ICAuthenticationPrompt *)self updateStringsForDeleteMultipleNotes];
  }
}

- (void)updateStringsForDeleteMixedNotes
{
  v3 = __ICLocalizedFrameworkString_impl(@"Delete Notes", @"Delete Notes", 0, 1);
  [(ICAuthenticationPrompt *)self setTitle:v3];

  if ([(ICAuthenticationPrompt *)self authenticationMechanism]!= 2)
  {
    if ([(ICAuthenticationPrompt *)self authenticationMechanism]== 4)
    {
      customAccountName = [(ICAuthenticationPrompt *)self customAccountName];

      if (customAccountName)
      {
        v5 = @"One or more notes are locked. Enter the password you created for notes in your “%@” account.";
        goto LABEL_8;
      }

      v11 = @"One or more notes are locked. Enter your locked notes password.";
    }

    else
    {
      if ([(ICAuthenticationPrompt *)self authenticationMechanism]!= 5)
      {
        if ([(ICAuthenticationPrompt *)self authenticationMechanism]!= 6)
        {
          return;
        }

        v12 = __ICLocalizedFrameworkString_impl(@"One or more notes are locked. Enter the password for “%@” to delete these notes.", @"One or more notes are locked. Enter the password for “%@” to delete these notes.", 0, 1);
        v7 = MEMORY[0x1E696AEC0];
        cloudAccountName = [(ICAuthenticationPrompt *)self cloudAccountName];
        goto LABEL_9;
      }

      v11 = @"Delete these notes.";
    }

LABEL_20:
    v12 = __ICLocalizedFrameworkString_impl(v11, v11, 0, 1);
    [(ICAuthenticationPrompt *)self setReason:?];
    goto LABEL_21;
  }

  if (![(ICAuthenticationPrompt *)self allowsCustomPasswordAuthentication]|| ([(ICAuthenticationPrompt *)self customAccountName], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    if ([(ICAuthenticationPrompt *)self allowsCustomPasswordAuthentication])
    {
      v11 = @"One or more notes are locked. Use your fingerprint or enter your password to delete these locked notes.";
    }

    else
    {
      if (![(ICAuthenticationPrompt *)self allowsDevicePasswordAuthentication])
      {
        return;
      }

      v11 = @"One or more notes are locked. Use your fingerprint or enter the device passcode to delete these locked notes.";
    }

    goto LABEL_20;
  }

  v5 = @"One or more notes are locked. Use your fingerprint or enter the password you created for notes in your “%@” account to delete these locked notes.";
LABEL_8:
  v12 = __ICLocalizedFrameworkString_impl(v5, v5, 0, 1);
  v7 = MEMORY[0x1E696AEC0];
  cloudAccountName = [(ICAuthenticationPrompt *)self customAccountName];
LABEL_9:
  v9 = cloudAccountName;
  v10 = [v7 localizedStringWithFormat:v12, cloudAccountName];
  [(ICAuthenticationPrompt *)self setReason:v10];

LABEL_21:
}

- (void)updateStringsForDeleteSingleNote
{
  v3 = __ICLocalizedFrameworkString_impl(@"Delete Note", @"Delete Note", 0, 1);
  [(ICAuthenticationPrompt *)self setTitle:v3];

  if ([(ICAuthenticationPrompt *)self authenticationMechanism]!= 2)
  {
    if ([(ICAuthenticationPrompt *)self authenticationMechanism]== 4)
    {
      customAccountName = [(ICAuthenticationPrompt *)self customAccountName];

      if (customAccountName)
      {
        v5 = @"Enter the password you created for notes in your “%@” account.";
        goto LABEL_8;
      }

      v11 = @"Enter your locked notes password.";
    }

    else
    {
      if ([(ICAuthenticationPrompt *)self authenticationMechanism]!= 5)
      {
        if ([(ICAuthenticationPrompt *)self authenticationMechanism]!= 6)
        {
          return;
        }

        v12 = __ICLocalizedFrameworkString_impl(@"Enter the password for “%@” to delete this note.", @"Enter the password for “%@” to delete this note.", 0, 1);
        v7 = MEMORY[0x1E696AEC0];
        cloudAccountName = [(ICAuthenticationPrompt *)self cloudAccountName];
        goto LABEL_9;
      }

      v11 = @"Delete this note.";
    }

LABEL_20:
    v12 = __ICLocalizedFrameworkString_impl(v11, v11, 0, 1);
    [(ICAuthenticationPrompt *)self setReason:?];
    goto LABEL_21;
  }

  if (![(ICAuthenticationPrompt *)self allowsCustomPasswordAuthentication]|| ([(ICAuthenticationPrompt *)self customAccountName], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    if ([(ICAuthenticationPrompt *)self allowsCustomPasswordAuthentication])
    {
      v11 = @"Use your fingerprint or enter your password to delete this locked note.";
    }

    else
    {
      if (![(ICAuthenticationPrompt *)self allowsDevicePasswordAuthentication])
      {
        return;
      }

      v11 = @"Use your fingerprint or enter the device passcode to delete this locked note.";
    }

    goto LABEL_20;
  }

  v5 = @"Use your fingerprint or enter the password you created for notes in your “%@” account to delete this locked note.";
LABEL_8:
  v12 = __ICLocalizedFrameworkString_impl(v5, v5, 0, 1);
  v7 = MEMORY[0x1E696AEC0];
  cloudAccountName = [(ICAuthenticationPrompt *)self customAccountName];
LABEL_9:
  v9 = cloudAccountName;
  v10 = [v7 localizedStringWithFormat:v12, cloudAccountName];
  [(ICAuthenticationPrompt *)self setReason:v10];

LABEL_21:
}

- (void)updateStringsForDeleteMultipleNotes
{
  v3 = __ICLocalizedFrameworkString_impl(@"Delete Notes", @"Delete Notes", 0, 1);
  [(ICAuthenticationPrompt *)self setTitle:v3];

  if ([(ICAuthenticationPrompt *)self authenticationMechanism]!= 2)
  {
    if ([(ICAuthenticationPrompt *)self authenticationMechanism]== 4)
    {
      customAccountName = [(ICAuthenticationPrompt *)self customAccountName];

      if (customAccountName)
      {
        v5 = @"Enter the password you created for notes in your “%@” account.";
        goto LABEL_8;
      }

      v11 = @"Enter your locked notes password.";
    }

    else
    {
      if ([(ICAuthenticationPrompt *)self authenticationMechanism]!= 5)
      {
        if ([(ICAuthenticationPrompt *)self authenticationMechanism]!= 6)
        {
          return;
        }

        v12 = __ICLocalizedFrameworkString_impl(@"Enter the password for “%@” to delete these notes.", @"Enter the password for “%@” to delete these notes.", 0, 1);
        v7 = MEMORY[0x1E696AEC0];
        cloudAccountName = [(ICAuthenticationPrompt *)self cloudAccountName];
        goto LABEL_9;
      }

      v11 = @"Delete these notes.";
    }

LABEL_20:
    v12 = __ICLocalizedFrameworkString_impl(v11, v11, 0, 1);
    [(ICAuthenticationPrompt *)self setReason:?];
    goto LABEL_21;
  }

  if (![(ICAuthenticationPrompt *)self allowsCustomPasswordAuthentication]|| ([(ICAuthenticationPrompt *)self customAccountName], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    if ([(ICAuthenticationPrompt *)self allowsCustomPasswordAuthentication])
    {
      v11 = @"Use your fingerprint or enter your password to delete these locked notes.";
    }

    else
    {
      if (![(ICAuthenticationPrompt *)self allowsDevicePasswordAuthentication])
      {
        return;
      }

      v11 = @"Use your fingerprint or enter the device passcode to delete these locked notes.";
    }

    goto LABEL_20;
  }

  v5 = @"Use your fingerprint or enter the password you created for notes in your “%@” account to delete these locked notes.";
LABEL_8:
  v12 = __ICLocalizedFrameworkString_impl(v5, v5, 0, 1);
  v7 = MEMORY[0x1E696AEC0];
  cloudAccountName = [(ICAuthenticationPrompt *)self customAccountName];
LABEL_9:
  v9 = cloudAccountName;
  v10 = [v7 localizedStringWithFormat:v12, cloudAccountName];
  [(ICAuthenticationPrompt *)self setReason:v10];

LABEL_21:
}

- (void)updateStringsForChangePassword
{
  v3 = __ICLocalizedFrameworkString_impl(@"Change Notes Password", @"Change Notes Password", 0, 1);
  [(ICAuthenticationPrompt *)self setTitle:v3];

  if ([(ICAuthenticationPrompt *)self authenticationMechanism]!= 2)
  {
    if ([(ICAuthenticationPrompt *)self authenticationMechanism]!= 4)
    {
      return;
    }

    customAccountName = [(ICAuthenticationPrompt *)self customAccountName];

    if (customAccountName)
    {
      v5 = @"Enter the password you created for notes in your “%@” account.";
      goto LABEL_8;
    }

    v10 = @"Enter your locked notes password.";
LABEL_15:
    v11 = __ICLocalizedFrameworkString_impl(v10, v10, 0, 1);
    [(ICAuthenticationPrompt *)self setReason:?];
    goto LABEL_16;
  }

  if (![(ICAuthenticationPrompt *)self allowsCustomPasswordAuthentication]|| ([(ICAuthenticationPrompt *)self customAccountName], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    if ([(ICAuthenticationPrompt *)self allowsCustomPasswordAuthentication])
    {
      v10 = @"Use your fingerprint or enter your notes password to change the password.";
    }

    else
    {
      if (![(ICAuthenticationPrompt *)self allowsDevicePasswordAuthentication])
      {
        return;
      }

      v10 = @"Use your fingerprint or enter the device passcode to change the password.";
    }

    goto LABEL_15;
  }

  v5 = @"Use your fingerprint or enter the password you created for notes in your “%@” account to change the password.";
LABEL_8:
  v11 = __ICLocalizedFrameworkString_impl(v5, v5, 0, 1);
  v7 = MEMORY[0x1E696AEC0];
  customAccountName2 = [(ICAuthenticationPrompt *)self customAccountName];
  v9 = [v7 localizedStringWithFormat:v11, customAccountName2];
  [(ICAuthenticationPrompt *)self setReason:v9];

LABEL_16:
}

- (void)updateStringsForResetPassword
{
  v3 = __ICLocalizedFrameworkString_impl(@"Reset Notes Password", @"Reset Notes Password", 0, 1);
  [(ICAuthenticationPrompt *)self setTitle:v3];

  if ([(ICAuthenticationPrompt *)self authenticationMechanism]!= 5)
  {
    if ([(ICAuthenticationPrompt *)self authenticationMechanism]!= 6)
    {
      return;
    }

    customAccountName = [(ICAuthenticationPrompt *)self customAccountName];

    if (customAccountName)
    {
      v13 = __ICLocalizedFrameworkString_impl(@"Enter the password for “%@” to reset the notes password for your “%@” account.", @"Enter the password for “%@” to reset the notes password for your “%@” account.", 0, 1);
      v8 = MEMORY[0x1E696AEC0];
      cloudAccountName = [(ICAuthenticationPrompt *)self cloudAccountName];
      customAccountName2 = [(ICAuthenticationPrompt *)self customAccountName];
      v11 = [v8 localizedStringWithFormat:v13, cloudAccountName, customAccountName2];
      [(ICAuthenticationPrompt *)self setReason:v11];

LABEL_11:
      goto LABEL_12;
    }

    v13 = __ICLocalizedFrameworkString_impl(@"Enter the password for “%@” to reset your notes password.", @"Enter the password for “%@” to reset your notes password.", 0, 1);
    v5 = MEMORY[0x1E696AEC0];
    cloudAccountName2 = [(ICAuthenticationPrompt *)self cloudAccountName];
LABEL_10:
    cloudAccountName = cloudAccountName2;
    v12 = [v5 localizedStringWithFormat:v13, cloudAccountName2];
    [(ICAuthenticationPrompt *)self setReason:v12];

    goto LABEL_11;
  }

  customAccountName3 = [(ICAuthenticationPrompt *)self customAccountName];

  if (customAccountName3)
  {
    v13 = __ICLocalizedFrameworkString_impl(@"Reset the notes password for your “%@” account.", @"Reset the notes password for your “%@” account.", 0, 1);
    v5 = MEMORY[0x1E696AEC0];
    cloudAccountName2 = [(ICAuthenticationPrompt *)self customAccountName];
    goto LABEL_10;
  }

  v13 = __ICLocalizedFrameworkString_impl(@"Reset your notes password.", @"Reset your notes password.", 0, 1);
  [(ICAuthenticationPrompt *)self setReason:?];
LABEL_12:
}

- (void)updateStringsForChangeMode
{
  if ([(ICAuthenticationPrompt *)self usesSecondaryAuthenticationIfAvailable]|| [(ICAuthenticationPrompt *)self forcesSecondaryAuthentication])
  {

    [(ICAuthenticationPrompt *)self updateStringsForChangeModeTo];
  }

  else
  {

    [(ICAuthenticationPrompt *)self updateStringsForChangeModeFrom];
  }
}

- (void)updateStringsForChangeModeFrom
{
  v3 = __ICLocalizedFrameworkString_impl(@"Current Notes Password", @"Current Notes Password", 0, 1);
  [(ICAuthenticationPrompt *)self setTitle:v3];

  if ([(ICAuthenticationPrompt *)self authenticationMechanism]!= 2)
  {
    if ([(ICAuthenticationPrompt *)self authenticationMechanism]!= 4)
    {
      return;
    }

    customAccountName = [(ICAuthenticationPrompt *)self customAccountName];

    if (customAccountName)
    {
      v6 = @"Enter the password you created for notes in your “%@” account.";
      goto LABEL_8;
    }

    v12 = @"Enter your locked notes password.";
LABEL_15:
    v13 = __ICLocalizedFrameworkString_impl(v12, v12, 0, 1);
    [(ICAuthenticationPrompt *)self setReason:?];
    goto LABEL_16;
  }

  if (![(ICAuthenticationPrompt *)self allowsCustomPasswordAuthentication]|| ([(ICAuthenticationPrompt *)self customAccountName], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    if ([(ICAuthenticationPrompt *)self allowsCustomPasswordAuthentication])
    {
      v11 = __ICLocalizedFrameworkString_impl(@"Current Notes Password", @"Current Notes Password", 0, 1);
      [(ICAuthenticationPrompt *)self setTitle:v11];

      v12 = @"Use your fingerprint or enter your notes password.";
    }

    else
    {
      if (![(ICAuthenticationPrompt *)self allowsDevicePasswordAuthentication])
      {
        return;
      }

      v12 = @"Use your fingerprint or enter the device passcode.";
    }

    goto LABEL_15;
  }

  v5 = __ICLocalizedFrameworkString_impl(@"Current Notes Password", @"Current Notes Password", 0, 1);
  [(ICAuthenticationPrompt *)self setTitle:v5];

  v6 = @"Use your fingerprint or enter the password you created for notes in your “%@” account.";
LABEL_8:
  v13 = __ICLocalizedFrameworkString_impl(v6, v6, 0, 1);
  v8 = MEMORY[0x1E696AEC0];
  customAccountName2 = [(ICAuthenticationPrompt *)self customAccountName];
  v10 = [v8 localizedStringWithFormat:v13, customAccountName2];
  [(ICAuthenticationPrompt *)self setReason:v10];

LABEL_16:
}

- (void)updateStringsForChangeModeTo
{
  v3 = __ICLocalizedFrameworkString_impl(@"Change Method", @"Change Method", 0, 1);
  [(ICAuthenticationPrompt *)self setTitle:v3];

  if ([(ICAuthenticationPrompt *)self authenticationMechanism]!= 2)
  {
    if ([(ICAuthenticationPrompt *)self authenticationMechanism]== 4)
    {
      customAccountName = [(ICAuthenticationPrompt *)self customAccountName];

      if (customAccountName)
      {
        v5 = @"Enter the password you created for notes in your “%@” account.";
        goto LABEL_10;
      }

      v11 = @"Enter your locked notes password.";
    }

    else
    {
      if ([(ICAuthenticationPrompt *)self authenticationMechanism]!= 5)
      {
        return;
      }

      customAccountName2 = [(ICAuthenticationPrompt *)self customAccountName];

      if (customAccountName2)
      {
        v5 = @"Lock “%@” notes with passcode.";
        goto LABEL_10;
      }

      v11 = @"Lock notes with passcode.";
    }

LABEL_18:
    v12 = __ICLocalizedFrameworkString_impl(v11, v11, 0, 1);
    [(ICAuthenticationPrompt *)self setReason:?];
    goto LABEL_19;
  }

  customAccountName3 = [(ICAuthenticationPrompt *)self customAccountName];

  if (!customAccountName3)
  {
    if ([(ICAuthenticationPrompt *)self allowsCustomPasswordAuthentication])
    {
      v11 = @"Use your fingerprint or enter your notes password.";
    }

    else
    {
      if (![(ICAuthenticationPrompt *)self allowsDevicePasswordAuthentication])
      {
        return;
      }

      v11 = @"Use your fingerprint or enter the device passcode.";
    }

    goto LABEL_18;
  }

  v5 = @"Use your fingerprint or enter the password you created for notes in your “%@” account.";
LABEL_10:
  v12 = __ICLocalizedFrameworkString_impl(v5, v5, 0, 1);
  v8 = MEMORY[0x1E696AEC0];
  customAccountName4 = [(ICAuthenticationPrompt *)self customAccountName];
  v10 = [v8 localizedStringWithFormat:v12, customAccountName4];
  [(ICAuthenticationPrompt *)self setReason:v10];

LABEL_19:
}

- (void)updateStringsForToggleBiometrics
{
  if ([MEMORY[0x1E69B77C8] biometricsType] == 4)
  {
    v3 = __ICLocalizedFrameworkString_impl(@"Optic ID for “Notes”", @"Optic ID for “Notes”", 0, 1);
    [(ICAuthenticationPrompt *)self setTitle:v3];

    if ([(ICAuthenticationPrompt *)self authenticationMechanism]!= 4)
    {
      if ([(ICAuthenticationPrompt *)self authenticationMechanism]!= 5)
      {
        return;
      }

      if ([(ICAuthenticationPrompt *)self isBiometricAuthenticationEnabled])
      {
        v4 = @"Turn off Optic ID for locked notes.";
LABEL_11:
        v14 = __ICLocalizedFrameworkString_impl(v4, v4, 0, 1);
        [(ICAuthenticationPrompt *)self setReason:v14];
        selfCopy2 = self;
        v7 = v14;
LABEL_26:
        [(ICAuthenticationPrompt *)selfCopy2 setReason:v7];
        goto LABEL_27;
      }

      v13 = @"Turn on Optic ID for locked notes.";
      goto LABEL_25;
    }
  }

  else if ([MEMORY[0x1E69B77C8] biometricsType] == 2)
  {
    v5 = __ICLocalizedFrameworkString_impl(@"Face ID for “Notes”", @"Face ID for “Notes”", 0, 1);
    [(ICAuthenticationPrompt *)self setTitle:v5];

    if ([(ICAuthenticationPrompt *)self authenticationMechanism]!= 4)
    {
      if ([(ICAuthenticationPrompt *)self authenticationMechanism]!= 5)
      {
        return;
      }

      if ([(ICAuthenticationPrompt *)self isBiometricAuthenticationEnabled])
      {
        v4 = @"Turn off Face ID for locked notes.";
        goto LABEL_11;
      }

      v13 = @"Turn on Face ID for locked notes.";
LABEL_25:
      v7 = __ICLocalizedFrameworkString_impl(v13, v13, 0, 1);
      selfCopy2 = self;
      v14 = v7;
      goto LABEL_26;
    }
  }

  else
  {
    if ([MEMORY[0x1E69B77C8] biometricsType] != 1)
    {
      v14 = __ICLocalizedFrameworkString_impl(@"Change Biometrics Status", @"Change Biometrics Status", 0, 1);
      [(ICAuthenticationPrompt *)self setTitle:?];
      goto LABEL_27;
    }

    v8 = __ICLocalizedFrameworkString_impl(@"Touch ID for “Notes”", @"Touch ID for “Notes”", 0, 1);
    [(ICAuthenticationPrompt *)self setTitle:v8];

    if ([(ICAuthenticationPrompt *)self authenticationMechanism]!= 4)
    {
      if ([(ICAuthenticationPrompt *)self authenticationMechanism]!= 5)
      {
        return;
      }

      if ([(ICAuthenticationPrompt *)self isBiometricAuthenticationEnabled])
      {
        v13 = @"Turn off Touch ID for locked notes.";
      }

      else
      {
        v13 = @"Turn on Touch ID for locked notes.";
      }

      goto LABEL_25;
    }
  }

  customAccountName = [(ICAuthenticationPrompt *)self customAccountName];

  if (!customAccountName)
  {
    v13 = @"Enter your locked notes password.";
    goto LABEL_25;
  }

  v14 = __ICLocalizedFrameworkString_impl(@"Enter the password you created for notes in your “%@” account.", @"Enter the password you created for notes in your “%@” account.", 0, 1);
  v10 = MEMORY[0x1E696AEC0];
  customAccountName2 = [(ICAuthenticationPrompt *)self customAccountName];
  v12 = [v10 localizedStringWithFormat:v14, customAccountName2];
  [(ICAuthenticationPrompt *)self setReason:v12];

LABEL_27:
}

- (ICAuthenticationPrompt)initWithIntent:(unint64_t)intent object:(id)object
{
  v30[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v29.receiver = self;
  v29.super_class = ICAuthenticationPrompt;
  v8 = [(ICAuthenticationPrompt *)&v29 init];
  if (v8)
  {
    objc_opt_class();
    v9 = ICDynamicCast();
    v10 = v9;
    if (v9)
    {
      cloudAccount = v9;
    }

    else
    {
      cloudAccount = [objectCopy cloudAccount];
    }

    v12 = cloudAccount;

    objc_opt_class();
    v13 = ICDynamicCast();
    v14 = v13;
    if (v13)
    {
      note = v13;
    }

    else
    {
      objc_opt_class();
      v16 = ICDynamicCast();
      note = [v16 note];
    }

    [MEMORY[0x1E69B77C8] refreshBiometricsContext];
    [MEMORY[0x1E69B77C8] refreshHasPasscode];
    v8->_intent = intent;
    objc_storeStrong(&v8->_object, object);
    objc_storeStrong(&v8->_account, v12);
    objc_storeStrong(&v8->_note, note);
    if (note)
    {
      v30[0] = note;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    }

    else
    {
      v17 = MEMORY[0x1E695E0F0];
    }

    notes = v8->_notes;
    v8->_notes = v17;

    *&v8->_usesBiometricAuthenticationIfAvailable = 257;
    v8->_internetReachable = [MEMORY[0x1E69B7AD0] isInternetReachable];
    mEMORY[0x1E69B76D0] = [MEMORY[0x1E69B76D0] sharedState];
    if ([mEMORY[0x1E69B76D0] biometricsEnabledForAccount:v12])
    {
      mEMORY[0x1E69B76D0]2 = [MEMORY[0x1E69B76D0] sharedState];
      if ([mEMORY[0x1E69B76D0]2 checkSupportsBiometrics])
      {
        v21 = [MEMORY[0x1E69B77C8] biometricsLockedOut] ^ 1;
      }

      else
      {
        v21 = 0;
      }

      v8->_biometricAuthenticationEnabled = v21;
    }

    else
    {
      v8->_biometricAuthenticationEnabled = 0;
    }

    v8->_biometricAuthenticationType = [MEMORY[0x1E69B77C8] biometricsType];
    v8->_keychainAvailable = [MEMORY[0x1E69B7798] isSyncAvailableForAccount:v12];
    mEMORY[0x1E69B76D0]3 = [MEMORY[0x1E69B76D0] sharedState];
    authenticationObject = [(ICAuthenticationPrompt *)v8 authenticationObject];
    v24 = [mEMORY[0x1E69B76D0]3 mainKeyFromKeychainForObject:authenticationObject];
    v8->_hasKeychainItem = v24 != 0;

    mEMORY[0x1E69B7A28] = [MEMORY[0x1E69B7A28] sharedInstance];
    accountStore = [mEMORY[0x1E69B7A28] accountStore];
    aa_primaryAppleAccount = [accountStore aa_primaryAppleAccount];
    v8->_hasCloudAccount = aa_primaryAppleAccount != 0;

    v8->_hasDevicePassword = [MEMORY[0x1E69B77C8] hasPasscode];
    v8->_authenticationAction = 1;
    if (!v8->_account)
    {
      [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"_account" functionName:"-[ICAuthenticationPrompt initWithIntent:object:]" simulateCrash:1 showAlert:0 format:@"Nil authentication prompt account"];
    }
  }

  return v8;
}

- (id)description
{
  v23 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v22 = NSStringFromClass(v3);
  v31 = NSStringFromAuthenticationIntent([(ICAuthenticationPrompt *)self intent]);
  v32 = NSStringFromAuthenticationAction([(ICAuthenticationPrompt *)self authenticationAction]);
  v29 = NSStringFromAuthenticationMechanism([(ICAuthenticationPrompt *)self authenticationMechanism]);
  account = [(ICAuthenticationPrompt *)self account];
  shortLoggingDescription = [account shortLoggingDescription];
  account2 = [(ICAuthenticationPrompt *)self account];
  accountData = [account2 accountData];
  [accountData lockedNotesMode];
  v28 = NSStringFromAccountDataLockedNotesMode();
  v4 = MEMORY[0x1E696AD98];
  account3 = [(ICAuthenticationPrompt *)self account];
  accountData2 = [account3 accountData];
  v17 = [v4 numberWithBool:{objc_msgSend(accountData2, "supportsV1Neo")}];
  object = [(ICAuthenticationPrompt *)self object];
  shortLoggingDescription2 = [object shortLoggingDescription];
  v5 = MEMORY[0x1E69B7728];
  object2 = [(ICAuthenticationPrompt *)self object];
  [v5 cipherVersionForObject:object2];
  v6 = ICCipherNameForCipherVersion();
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[ICAuthenticationPrompt isInternetReachable](self, "isInternetReachable")}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[ICAuthenticationPrompt isBiometricAuthenticationEnabled](self, "isBiometricAuthenticationEnabled")}];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[ICAuthenticationPrompt isKeychainAvailable](self, "isKeychainAvailable")}];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[ICAuthenticationPrompt hasKeychainItem](self, "hasKeychainItem")}];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[ICAuthenticationPrompt hasCloudAccount](self, "hasCloudAccount")}];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[ICAuthenticationPrompt hasDevicePassword](self, "hasDevicePassword")}];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[ICAuthenticationPrompt hasDivergedKey](self, "hasDivergedKey")}];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[ICAuthenticationPrompt needsUserRecordUpdate](self, "needsUserRecordUpdate")}];
  v24 = [v23 stringWithFormat:@"<%@: %p, intent: %@, action: %@, mechanism: %@, account: %@, account.lockedNotesMode: %@, account.supportsV1Neo: %@, object: %@, object.cipherVersion: %@, isInternetReachable: %@, isBiometricAuthenticationEnabled: %@, isKeychainAvailable: %@, hasKeychainItem: %@, hasCloudAccount: %@, hasDevicePassword: %@, hasDivergedKey: %@, needsUserRecordUpdate: %@>", v22, self, v31, v32, v29, shortLoggingDescription, v28, v17, shortLoggingDescription2, v6, v15, v7, v14, v8, v9, v10, v11, v12];

  return v24;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  equalCopy = equal;
  objc_opt_class();
  v5 = ICDynamicCast();

  intent = [v5 intent];
  if (intent == [(ICAuthenticationPrompt *)self intent])
  {
    object = [v5 object];
    object2 = [(ICAuthenticationPrompt *)self object];
    if (object == object2)
    {
      notes = [v5 notes];
      notes2 = [(ICAuthenticationPrompt *)self notes];
      if ([notes isEqualToArray:notes2])
      {
        unauthenticatedNotes = [v5 unauthenticatedNotes];
        unauthenticatedNotes2 = [(ICAuthenticationPrompt *)self unauthenticatedNotes];
        if ([unauthenticatedNotes isEqualToArray:unauthenticatedNotes2])
        {
          secondaryAuthenticationMode = [v5 secondaryAuthenticationMode];
          v9 = secondaryAuthenticationMode == [(ICAuthenticationPrompt *)self secondaryAuthenticationMode];
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v38 = *MEMORY[0x1E69E9840];
  intent = [(ICAuthenticationPrompt *)self intent];
  object = [(ICAuthenticationPrompt *)self object];
  v4 = [object hash];
  notes = [(ICAuthenticationPrompt *)self notes];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v7 hash];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = notes;
  v10 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v34;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v8 = ICHashWithObject(*(*(&v33 + 1) + 8 * i)) - v8 + 32 * v8;
      }

      v11 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v11);
  }

  unauthenticatedNotes = [(ICAuthenticationPrompt *)self unauthenticatedNotes];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = [v16 hash];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = unauthenticatedNotes;
  v19 = [v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v34;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v17 = ICHashWithObject(*(*(&v33 + 1) + 8 * j)) - v17 + 32 * v17;
      }

      v20 = [v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v20);
  }

  [(ICAuthenticationPrompt *)self secondaryAuthenticationMode];
  v30 = ICHashWithHashKeys(intent, v23, v24, v25, v26, v27, v28, v29, v4);

  return v30;
}

+ (id)promptForIntent:(unint64_t)intent object:(id)object
{
  objectCopy = object;
  v6 = [[ICAuthenticationPrompt alloc] initWithIntent:intent object:objectCopy];

  [(ICAuthenticationPrompt *)v6 update];

  return v6;
}

+ (id)promptForDeletingNotes:(id)notes
{
  notesCopy = notes;
  v4 = MEMORY[0x1E695DFD8];
  v5 = [notesCopy ic_compactMap:&__block_literal_global_95];
  v6 = [v4 setWithArray:v5];

  allObjects = [v6 allObjects];
  firstObject = [allObjects firstObject];

  if ([v6 count] != 1)
  {
    v9 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ICAuthenticationPrompt promptForDeletingNotes:v9];
    }
  }

  v10 = [notesCopy ic_objectsPassingTest:&__block_literal_global_34_0];

  v11 = [[ICAuthenticationPrompt alloc] initWithIntent:4 object:firstObject];
  [(ICAuthenticationPrompt *)v11 setNotes:v10];
  [(ICAuthenticationPrompt *)v11 update];

  return v11;
}

+ (id)promptForChangingMode:(signed __int16)mode account:(id)account
{
  modeCopy = mode;
  accountCopy = account;
  v6 = [[ICAuthenticationPrompt alloc] initWithIntent:7 object:accountCopy];

  [(ICAuthenticationPrompt *)v6 setSecondaryAuthenticationMode:modeCopy];
  [(ICAuthenticationPrompt *)v6 update];

  return v6;
}

- (NSArray)unauthenticatedNotes
{
  notes = [(ICAuthenticationPrompt *)self notes];
  v3 = [notes ic_objectsPassingTest:&__block_literal_global_36];

  return v3;
}

- (ICCloudSyncingObject)authenticationObject
{
  intent = [(ICAuthenticationPrompt *)self intent];
  if (intent <= 8)
  {
    if (((1 << intent) & 0x1F4) != 0)
    {
      [(ICAuthenticationPrompt *)self account];
    }

    else
    {
      [(ICAuthenticationPrompt *)self object];
    }
    intent = ;
  }

  return intent;
}

- (BOOL)allowsAuthentication
{
  intent = [(ICAuthenticationPrompt *)self intent];
  LOBYTE(v4) = 1;
  if (intent <= 6)
  {
    if (((1 << intent) & 0xB) != 0)
    {
      object = [(ICAuthenticationPrompt *)self object];
      if ([object isPasswordProtected])
      {
        object2 = [(ICAuthenticationPrompt *)self object];
        primaryEncryptedData = [object2 primaryEncryptedData];
        if (!primaryEncryptedData)
        {
          object3 = [(ICAuthenticationPrompt *)self object];
          cryptoWrappedKey = [object3 cryptoWrappedKey];
          LOBYTE(v4) = cryptoWrappedKey != 0;
        }

        goto LABEL_13;
      }

      goto LABEL_10;
    }

    if (((1 << intent) & 0x60) != 0)
    {
      v5 = MEMORY[0x1E69B7728];
      object = [(ICAuthenticationPrompt *)self authenticationObject];
      if ([v5 shouldAuthenticateWithCustomPasswordForObject:object])
      {
        account = [(ICAuthenticationPrompt *)self account];
        LOBYTE(v4) = [account hasPassphraseSet];

LABEL_13:
        return v4;
      }

LABEL_10:
      LOBYTE(v4) = 0;
      goto LABEL_13;
    }

    if (intent == 2)
    {
      object = [(ICAuthenticationPrompt *)self object];
      v4 = [object isPasswordProtected] ^ 1;
      goto LABEL_13;
    }
  }

  return v4;
}

- (BOOL)needsAuthentication
{
  intent = [(ICAuthenticationPrompt *)self intent];
  LOBYTE(v4) = 1;
  if (intent > 2)
  {
    if ((intent - 5) < 2)
    {
      authenticationObject = [(ICAuthenticationPrompt *)self authenticationObject];
      if ([authenticationObject hasPassphraseSet])
      {
        LOBYTE(v4) = [(ICAuthenticationPrompt *)self allowsCustomPasswordAuthentication];
        goto LABEL_15;
      }

LABEL_11:
      LOBYTE(v4) = 0;
      goto LABEL_15;
    }

    if (intent == 4)
    {
      authenticationObject = [(ICAuthenticationPrompt *)self unauthenticatedNotes];
      LOBYTE(v4) = [authenticationObject count] != 0;
      goto LABEL_15;
    }

    if (intent != 3)
    {
      return v4;
    }

LABEL_7:
    authenticationObject = [(ICAuthenticationPrompt *)self authenticationObject];
    if ([authenticationObject isPasswordProtected])
    {
      authenticationObject2 = [(ICAuthenticationPrompt *)self authenticationObject];
      v4 = [authenticationObject2 isAuthenticated] ^ 1;

LABEL_15:
      return v4;
    }

    goto LABEL_11;
  }

  if (intent < 2)
  {
    goto LABEL_7;
  }

  if (intent == 2)
  {
    authenticationObject = [(ICAuthenticationPrompt *)self authenticationObject];
    v4 = [authenticationObject isAuthenticated] ^ 1;
    goto LABEL_15;
  }

  return v4;
}

- (BOOL)needsSecondaryAuthentication
{
  if ([(ICAuthenticationPrompt *)self intent]!= 7)
  {
    return 0;
  }

  account = [(ICAuthenticationPrompt *)self account];
  resolvedLockedNotesMode = [account resolvedLockedNotesMode];
  if (resolvedLockedNotesMode == [(ICAuthenticationPrompt *)self secondaryAuthenticationMode])
  {
    hasPassphraseSet = 0;
  }

  else if ([(ICAuthenticationPrompt *)self allowsCustomPasswordAuthentication])
  {
    authenticationObject = [(ICAuthenticationPrompt *)self authenticationObject];
    hasPassphraseSet = [authenticationObject hasPassphraseSet];
  }

  else
  {
    hasPassphraseSet = 1;
  }

  return hasPassphraseSet;
}

- (BOOL)forcesSecondaryAuthentication
{
  if ([(ICAuthenticationPrompt *)self intent]== 7)
  {
    account = [(ICAuthenticationPrompt *)self account];
    resolvedLockedNotesMode = [account resolvedLockedNotesMode];
    if (resolvedLockedNotesMode == [(ICAuthenticationPrompt *)self secondaryAuthenticationMode]|| ![(ICAuthenticationPrompt *)self allowsCustomPasswordAuthentication])
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      authenticationObject = [(ICAuthenticationPrompt *)self authenticationObject];
      v6 = [authenticationObject hasPassphraseSet] ^ 1;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)needsKeychain
{
  intent = [(ICAuthenticationPrompt *)self intent];
  if (intent == 7)
  {
    if ([(ICAuthenticationPrompt *)self secondaryAuthenticationMode]== 2)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (intent != 2 || ![(ICAuthenticationPrompt *)self allowsDevicePasswordAuthentication])
  {
    return 0;
  }

LABEL_4:

  return [(ICAuthenticationPrompt *)self hasCloudAccount];
}

- (BOOL)needsCloudAccount
{
  intent = [(ICAuthenticationPrompt *)self intent];
  if (intent == 7)
  {
    return [(ICAuthenticationPrompt *)self secondaryAuthenticationMode]== 2;
  }

  if (intent != 2)
  {
    return 0;
  }

  return [(ICAuthenticationPrompt *)self allowsDevicePasswordAuthentication];
}

- (BOOL)needsDevicePassword
{
  intent = [(ICAuthenticationPrompt *)self intent];
  if (intent == 7)
  {
    return [(ICAuthenticationPrompt *)self secondaryAuthenticationMode]== 2;
  }

  if (intent != 2)
  {
    return 0;
  }

  return [(ICAuthenticationPrompt *)self allowsDevicePasswordAuthentication];
}

- (BOOL)allowsAlternativeAuthentication
{
  intent = [(ICAuthenticationPrompt *)self intent];
  if (intent - 5 < 2)
  {
    return 1;
  }

  if (intent != 4)
  {
    return 0;
  }

  account = [(ICAuthenticationPrompt *)self account];
  v4 = [account accountType] != 3 || -[ICAuthenticationPrompt hasDevicePassword](self, "hasDevicePassword");

  return v4;
}

- (BOOL)forcesAlternativeAuthentication
{
  intent = [(ICAuthenticationPrompt *)self intent];
  if (intent == 6)
  {
    LOBYTE(v5) = 1;
  }

  else if (intent == 4 && [(ICAuthenticationPrompt *)self allowsCustomPasswordAuthentication])
  {
    authenticationObject = [(ICAuthenticationPrompt *)self authenticationObject];
    v5 = [authenticationObject hasPassphraseSet] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)allowsCustomPasswordAuthentication
{
  allowsAuthentication = [(ICAuthenticationPrompt *)self allowsAuthentication];
  if (allowsAuthentication)
  {
    v4 = MEMORY[0x1E69B7728];
    authenticationObject = [(ICAuthenticationPrompt *)self authenticationObject];
    LOBYTE(v4) = [v4 shouldAuthenticateWithCustomPasswordForObject:authenticationObject];

    LOBYTE(allowsAuthentication) = v4;
  }

  return allowsAuthentication;
}

- (BOOL)allowsDevicePasswordAuthentication
{
  allowsAuthentication = [(ICAuthenticationPrompt *)self allowsAuthentication];
  if (allowsAuthentication)
  {
    v4 = MEMORY[0x1E69B7728];
    authenticationObject = [(ICAuthenticationPrompt *)self authenticationObject];
    LOBYTE(v4) = [v4 shouldAuthenticateWithDevicePasswordForObject:authenticationObject];

    LOBYTE(allowsAuthentication) = v4;
  }

  return allowsAuthentication;
}

- (BOOL)allowsBiometricAuthentication
{
  intent = [(ICAuthenticationPrompt *)self intent];
  if (intent > 7 || ((1 << intent) & 0xBD) == 0)
  {
    return 0;
  }

  if ([(ICAuthenticationPrompt *)self allowsCustomPasswordAuthentication])
  {
    if ([(ICAuthenticationPrompt *)self isBiometricAuthenticationEnabled]&& [(ICAuthenticationPrompt *)self hasPassphrase])
    {

      return [(ICAuthenticationPrompt *)self hasKeychainItem];
    }

    return 0;
  }

  if (![(ICAuthenticationPrompt *)self allowsDevicePasswordAuthentication])
  {
    return 0;
  }

  return [(ICAuthenticationPrompt *)self isBiometricAuthenticationEnabled];
}

- (BOOL)hasPassphrase
{
  authenticationObject = [(ICAuthenticationPrompt *)self authenticationObject];
  if ([authenticationObject hasPassphraseSet])
  {
    hasPassphraseSet = 1;
  }

  else
  {
    account = [(ICAuthenticationPrompt *)self account];
    hasPassphraseSet = [account hasPassphraseSet];
  }

  return hasPassphraseSet;
}

- (BOOL)hasDivergedKey
{
  account = [(ICAuthenticationPrompt *)self account];
  cryptoStrategy = [account cryptoStrategy];
  object = [(ICAuthenticationPrompt *)self object];
  v6 = [cryptoStrategy hasSameKeyAsObject:object];

  return v6 ^ 1;
}

- (BOOL)needsUserRecordUpdate
{
  if ([(ICAuthenticationPrompt *)self isInternetReachable])
  {
    v3 = MEMORY[0x1E69B7728];
    authenticationObject = [(ICAuthenticationPrompt *)self authenticationObject];
    v5 = [v3 cipherVersionForObject:authenticationObject];

    account = [(ICAuthenticationPrompt *)self account];
    LODWORD(authenticationObject) = [account accountType];

    LOBYTE(account) = 0;
    if (authenticationObject == 1 && !v5)
    {
      intent = [(ICAuthenticationPrompt *)self intent];
      LOBYTE(account) = 1;
      if (intent <= 8 && ((1 << intent) & 0x11B) != 0)
      {
        account2 = [(ICAuthenticationPrompt *)self account];
        LODWORD(account) = [account2 hasPassphraseSet] ^ 1;
      }
    }
  }

  else
  {
    LOBYTE(account) = 0;
  }

  return account;
}

- (void)update
{
  [MEMORY[0x1E69B77C8] refreshBiometricsContext];
  [MEMORY[0x1E69B77C8] refreshHasPasscode];
  [MEMORY[0x1E69B77C8] checkBiometricsPolicyState];
  [(ICAuthenticationPrompt *)self setAuthenticationAction:1];
  [(ICAuthenticationPrompt *)self setAuthenticationMechanism:0];
  v3 = MEMORY[0x1E695E0F0];
  [(ICAuthenticationPrompt *)self setSuccessAlerts:MEMORY[0x1E695E0F0]];
  [(ICAuthenticationPrompt *)self setFailureAlerts:v3];
  if ([(ICAuthenticationPrompt *)self needsAuthentication]&& [(ICAuthenticationPrompt *)self allowsCustomPasswordAuthentication]&& ![(ICAuthenticationPrompt *)self hasPassphrase]&& ![(ICAuthenticationPrompt *)self allowsAlternativeAuthentication]&& ![(ICAuthenticationPrompt *)self forcesSecondaryAuthentication])
  {
    goto LABEL_18;
  }

  if ([(ICAuthenticationPrompt *)self allowsAuthentication])
  {
    if ([(ICAuthenticationPrompt *)self needsDevicePassword]&& ![(ICAuthenticationPrompt *)self hasDevicePassword])
    {
      [(ICAuthenticationPrompt *)self setAuthenticationAction:1];
      failureAlerts = [(ICAuthenticationPrompt *)self failureAlerts];
      v7 = +[ICAuthenticationAlert setDevicePasswordActionAlert];
    }

    else
    {
      if (![(ICAuthenticationPrompt *)self needsAuthentication])
      {
        selfCopy2 = self;
        v5 = 0;
        goto LABEL_24;
      }

      if ([(ICAuthenticationPrompt *)self needsCloudAccount]&& ![(ICAuthenticationPrompt *)self hasCloudAccount])
      {
        [(ICAuthenticationPrompt *)self setAuthenticationAction:1];
        failureAlerts = [(ICAuthenticationPrompt *)self failureAlerts];
        account = [(ICAuthenticationPrompt *)self account];
        v19 = [ICAuthenticationAlert signIntoCloudAccountActionAlertWithAccount:account];
        v20 = [failureAlerts arrayByAddingObject:v19];
        [(ICAuthenticationPrompt *)self setFailureAlerts:v20];

        goto LABEL_22;
      }

      if ([(ICAuthenticationPrompt *)self needsKeychain]&& ![(ICAuthenticationPrompt *)self isKeychainAvailable])
      {
        [(ICAuthenticationPrompt *)self setAuthenticationAction:1];
        failureAlerts = [(ICAuthenticationPrompt *)self failureAlerts];
      }

      else
      {
        if ([(ICAuthenticationPrompt *)self usesSecondaryAuthenticationIfAvailable]&& [(ICAuthenticationPrompt *)self needsSecondaryAuthentication]|| [(ICAuthenticationPrompt *)self forcesSecondaryAuthentication])
        {
          if ([(ICAuthenticationPrompt *)self secondaryAuthenticationMode]== 1)
          {
LABEL_18:
            selfCopy2 = self;
            v5 = 3;
LABEL_24:
            [(ICAuthenticationPrompt *)selfCopy2 setAuthenticationAction:v5];
            goto LABEL_25;
          }

          if ([(ICAuthenticationPrompt *)self secondaryAuthenticationMode]== 2)
          {
            [(ICAuthenticationPrompt *)self setAuthenticationAction:2];
            goto LABEL_55;
          }

          v29 = MEMORY[0x1E69B7A38];
          v30 = @"Invalid secondary authentication mode while attempting secondary authentication";
LABEL_63:
          [v29 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICAuthenticationPrompt update]" simulateCrash:1 showAlert:0 format:v30];
          goto LABEL_25;
        }

        if ([(ICAuthenticationPrompt *)self usesAlternativeAuthenticationIfAvailable]&& [(ICAuthenticationPrompt *)self allowsAlternativeAuthentication]|| [(ICAuthenticationPrompt *)self forcesAlternativeAuthentication])
        {
          [(ICAuthenticationPrompt *)self setAuthenticationAction:2];
          if ([(ICAuthenticationPrompt *)self allowsCustomPasswordAuthentication])
          {
            account2 = [(ICAuthenticationPrompt *)self account];
            accountType = [account2 accountType];

            if (accountType == 3)
            {
LABEL_55:
              selfCopy6 = self;
              v24 = 5;
LABEL_74:
              [(ICAuthenticationPrompt *)selfCopy6 setAuthenticationMechanism:v24];
              goto LABEL_25;
            }
          }

          else if (![(ICAuthenticationPrompt *)self allowsDevicePasswordAuthentication])
          {
            selfCopy6 = self;
            v24 = 0;
            goto LABEL_74;
          }

          selfCopy6 = self;
          v24 = 6;
          goto LABEL_74;
        }

        [(ICAuthenticationPrompt *)self setAuthenticationAction:2];
        if ([(ICAuthenticationPrompt *)self allowsCustomPasswordAuthentication])
        {
          selfCopy6 = self;
          v24 = 4;
          goto LABEL_74;
        }

        if (![(ICAuthenticationPrompt *)self allowsDevicePasswordAuthentication])
        {
          v29 = MEMORY[0x1E69B7A38];
          v30 = @"Neither custom nor device authentication allowed while attempting primary authentication";
          goto LABEL_63;
        }

        [(ICAuthenticationPrompt *)self setAuthenticationMechanism:5];
        if ([(ICAuthenticationPrompt *)self intent])
        {
          goto LABEL_25;
        }

        authenticationObject = [(ICAuthenticationPrompt *)self authenticationObject];
        canAuthenticate = [authenticationObject canAuthenticate];

        if (canAuthenticate)
        {
          if ([(ICAuthenticationPrompt *)self hasDevicePassword])
          {
            goto LABEL_25;
          }

          failureAlerts = [(ICAuthenticationPrompt *)self successAlerts];
          v8 = +[ICAuthenticationAlert setDevicePasswordInfoAlert];
          v9 = [failureAlerts arrayByAddingObject:v8];
          [(ICAuthenticationPrompt *)self setSuccessAlerts:v9];
          goto LABEL_21;
        }

        [(ICAuthenticationPrompt *)self setAuthenticationAction:1];
        [(ICAuthenticationPrompt *)self setAuthenticationMechanism:0];
        isKeychainAvailable = [(ICAuthenticationPrompt *)self isKeychainAvailable];
        failureAlerts = [(ICAuthenticationPrompt *)self failureAlerts];
        if (isKeychainAvailable)
        {
          v7 = +[ICAuthenticationAlert keychainItemMissingInfoAlert];
          goto LABEL_20;
        }
      }

      v7 = +[ICAuthenticationAlert enableKeychainActionAlert];
    }
  }

  else
  {
    [(ICAuthenticationPrompt *)self setAuthenticationAction:1];
    failureAlerts = [(ICAuthenticationPrompt *)self failureAlerts];
    v7 = +[ICAuthenticationAlert cannotUnlockInfoAlert];
  }

LABEL_20:
  v8 = v7;
  v9 = [failureAlerts arrayByAddingObject:v7];
  [(ICAuthenticationPrompt *)self setFailureAlerts:v9];
LABEL_21:

LABEL_22:
LABEL_25:
  if ([(ICAuthenticationPrompt *)self usesBiometricAuthenticationIfAvailable]&& [(ICAuthenticationPrompt *)self allowsBiometricAuthentication]&& [(ICAuthenticationPrompt *)self authenticationAction]== 2)
  {
    if ([(ICAuthenticationPrompt *)self biometricAuthenticationType]== 4)
    {
      v10 = 3;
    }

    else if ([(ICAuthenticationPrompt *)self biometricAuthenticationType]== 2)
    {
      v10 = 1;
    }

    else
    {
      if ([(ICAuthenticationPrompt *)self biometricAuthenticationType]!= 1)
      {
LABEL_59:
        if ([(ICAuthenticationPrompt *)self allowsCustomPasswordAuthentication]&& ![(ICAuthenticationPrompt *)self intent])
        {
          account3 = [(ICAuthenticationPrompt *)self account];
          v26 = [ICAuthenticationAlert rememberCustomPasswordInfoAlertWithAccount:account3];

          successAlerts = [(ICAuthenticationPrompt *)self successAlerts];
          v28 = [successAlerts arrayByAddingObject:v26];
          [(ICAuthenticationPrompt *)self setSuccessAlerts:v28];
        }

        goto LABEL_32;
      }

      v10 = 2;
    }

    [(ICAuthenticationPrompt *)self setAuthenticationMechanism:v10];
    goto LABEL_59;
  }

  if ([(ICAuthenticationPrompt *)self forcesBiometricAuthentication])
  {
    [(ICAuthenticationPrompt *)self setAuthenticationAction:1];
  }

LABEL_32:
  if ([(ICAuthenticationPrompt *)self intent]== 2 || [(ICAuthenticationPrompt *)self intent]== 7)
  {
    if (!-[ICAuthenticationPrompt allowsBiometricAuthentication](self, "allowsBiometricAuthentication") && [MEMORY[0x1E69B77C8] biometricsAvailable])
    {
      account4 = [(ICAuthenticationPrompt *)self account];
      v12 = [ICAuthenticationAlert enableBiometricsActionAlertWithAccount:account4];

      successAlerts2 = [(ICAuthenticationPrompt *)self successAlerts];
      v14 = [successAlerts2 arrayByAddingObject:v12];
      [(ICAuthenticationPrompt *)self setSuccessAlerts:v14];
    }

    successAlerts3 = [(ICAuthenticationPrompt *)self successAlerts];
    v16 = +[ICAuthenticationAlert aboutLockedNotesInfoAlert];
    v17 = [successAlerts3 arrayByAddingObject:v16];
    [(ICAuthenticationPrompt *)self setSuccessAlerts:v17];
  }

  [(ICAuthenticationPrompt *)self updateStrings];
}

@end
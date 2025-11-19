@interface NSURL
@end

@implementation NSURL

uint64_t __24__NSURL_ContactsUI__log__block_invoke()
{
  log_cn_once_object_3 = os_log_create("contactsui", "nsurl");

  return MEMORY[0x1EEE66BB8]();
}

id __81__NSURL_ContactsUI___cnui_telephonyURLFutureWithHandle_contact_preferDefaultApp___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 48) _cnui_telephonyURLWithHandle:*(a1 + 32) contact:*(a1 + 40) preferDefaultApp:*(a1 + 56)];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [CNContactsUIError errorWithCode:208];
    if (a2)
    {
      v6 = v6;
      *a2 = v6;
    }
  }

  return v4;
}

id __68__NSURL_ContactsUI___cnui_faceTimeAudioURLFutureWithHandle_contact___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 48) _cnui_faceTimeAudioURLWithHandle:*(a1 + 32) contact:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [CNContactsUIError errorWithCode:208];
    if (a2)
    {
      v6 = v6;
      *a2 = v6;
    }
  }

  return v4;
}

id __68__NSURL_ContactsUI___cnui_faceTimeVideoURLFutureWithHandle_contact___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 48) _cnui_faceTimeVideoURLWithHandle:*(a1 + 32) contact:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [CNContactsUIError errorWithCode:208];
    if (a2)
    {
      v6 = v6;
      *a2 = v6;
    }
  }

  return v4;
}

id __58__NSURL_ContactsUI___cnui_ttyURLFutureWithHandle_contact___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 48) _cnui_ttyURLWithHandle:*(a1 + 32) contact:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [CNContactsUIError errorWithCode:208];
    if (a2)
    {
      v6 = v6;
      *a2 = v6;
    }
  }

  return v4;
}

id __63__NSURL_ContactsUI___cnui_ttyRelayURLFutureWithHandle_contact___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 48) _cnui_ttyRelayURLWithHandle:*(a1 + 32) contact:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [CNContactsUIError errorWithCode:208];
    if (a2)
    {
      v6 = v6;
      *a2 = v6;
    }
  }

  return v4;
}

id __99__NSURL_ContactsUI___cnui_telephonyURLFutureWithHandle_contact_channelIdentifier_preferDefaultApp___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 56) _cnui_telephonyURLWithHandle:*(a1 + 32) contact:*(a1 + 40) channelIdentifier:*(a1 + 48) preferDefaultApp:*(a1 + 64)];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [CNContactsUIError errorWithCode:208];
    if (a2)
    {
      v6 = v6;
      *a2 = v6;
    }
  }

  return v4;
}

id __76__NSURL_ContactsUI___cnui_ttyURLFutureWithHandle_contact_channelIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 56) _cnui_ttyURLWithHandle:*(a1 + 32) contact:*(a1 + 40) channelIdentifier:*(a1 + 48)];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [CNContactsUIError errorWithCode:208];
    if (a2)
    {
      v6 = v6;
      *a2 = v6;
    }
  }

  return v4;
}

id __81__NSURL_ContactsUI___cnui_ttyRelayURLFutureWithHandle_contact_channelIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 56) _cnui_ttyRelayURLWithHandle:*(a1 + 32) contact:*(a1 + 40) channelIdentifier:*(a1 + 48)];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [CNContactsUIError errorWithCode:208];
    if (a2)
    {
      v6 = v6;
      *a2 = v6;
    }
  }

  return v4;
}

id __56__NSURL_ContactsUI___cnui_skypeTextURLFutureWithHandle___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 40) _cnui_skypeTextURLWithHandle:*(a1 + 32)];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [CNContactsUIError errorWithCode:208];
    if (a2)
    {
      v6 = v6;
      *a2 = v6;
    }
  }

  return v4;
}

id __57__NSURL_ContactsUI___cnui_skypeVoiceURLFutureWithHandle___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 40) _cnui_skypeVoiceURLWithHandle:*(a1 + 32)];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [CNContactsUIError errorWithCode:208];
    if (a2)
    {
      v6 = v6;
      *a2 = v6;
    }
  }

  return v4;
}

id __57__NSURL_ContactsUI___cnui_skypeVideoURLFutureWithHandle___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 40) _cnui_skypeVideoURLWithHandle:*(a1 + 32)];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [CNContactsUIError errorWithCode:208];
    if (a2)
    {
      v6 = v6;
      *a2 = v6;
    }
  }

  return v4;
}

id __63__NSURL_ContactsUI___cnui_messagesURLFutureWithHandle_contact___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 48) _cnui_messagesURLWithHandle:*(a1 + 32) contact:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [CNContactsUIError errorWithCode:208];
    if (a2)
    {
      v6 = v6;
      *a2 = v6;
    }
  }

  return v4;
}

id __64__NSURL_ContactsUI___cnui_messagingURLFutureWithHandle_contact___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 48) _cnui_messagingURLWithHandle:*(a1 + 32) contact:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [CNContactsUIError errorWithCode:208];
    if (a2)
    {
      v6 = v6;
      *a2 = v6;
    }
  }

  return v4;
}

id __59__NSURL_ContactsUI___cnui_mailURLFutureWithHandle_contact___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 48) _cnui_mailURLWithHandle:*(a1 + 32) contact:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [CNContactsUIError errorWithCode:208];
    if (a2)
    {
      v6 = v6;
      *a2 = v6;
    }
  }

  return v4;
}

id __56__NSURL_ContactsUI___cnui_walletPayURLFutureWithHandle___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 40) _cnui_walletPayURLWithHandle:*(a1 + 32)];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [CNContactsUIError errorWithCode:208];
    if (a2)
    {
      v6 = v6;
      *a2 = v6;
    }
  }

  return v4;
}

id __54__NSURL_ContactsUI___cnui_expanseURLFutureWithHandle___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 40) _cnui_expanseURLWithHandle:*(a1 + 32)];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [CNContactsUIError errorWithCode:208];
    if (a2)
    {
      v6 = v6;
      *a2 = v6;
    }
  }

  return v4;
}

@end
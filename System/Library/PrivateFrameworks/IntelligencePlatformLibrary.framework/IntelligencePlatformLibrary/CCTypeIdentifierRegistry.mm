@interface CCTypeIdentifierRegistry
+ (Class)itemMessageSubclassForFieldType:(unsigned __int16)a3;
+ (Class)itemMessageSubclassForIdentifier:(unsigned __int16)a3;
+ (Class)itemMessageSubclassForItemType:(unsigned __int16)a3;
+ (id)setIdentifierForItemType:(unsigned __int16)a3;
+ (unsigned)itemTypeForSetIdentifier:(id)a3;
@end

@implementation CCTypeIdentifierRegistry

+ (unsigned)itemTypeForSetIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ToolKitToolDefinition"])
  {
    v4 = 29397;
  }

  else if ([v3 isEqualToString:@"App.InstalledApp"])
  {
    v4 = -29102;
  }

  else if ([v3 isEqualToString:@"Calendar.Event"])
  {
    v4 = -11151;
  }

  else if ([v3 isEqualToString:@"CarPlay.RadioStation"])
  {
    v4 = -16470;
  }

  else if ([v3 isEqualToString:@"Contacts.Contact"])
  {
    v4 = 19668;
  }

  else if ([v3 isEqualToString:@"FindMy.Device"])
  {
    v4 = 27122;
  }

  else if ([v3 isEqualToString:@"Fitness.Guest"])
  {
    v4 = -11922;
  }

  else if ([v3 isEqualToString:@"Health.Medication"])
  {
    v4 = 12996;
  }

  else if ([v3 isEqualToString:@"HomeKit.Home"])
  {
    v4 = 7690;
  }

  else if ([v3 isEqualToString:@"HomeKit.HomeServiceArea"])
  {
    v4 = 17034;
  }

  else if ([v3 isEqualToString:@"Location.SignificantLocation"])
  {
    v4 = 15757;
  }

  else if ([v3 isEqualToString:@"MediaLibrary.Media"])
  {
    v4 = 18540;
  }

  else if ([v3 isEqualToString:@"PeopleSuggester.ContactPrior"])
  {
    v4 = -24968;
  }

  else if ([v3 isEqualToString:@"Photos.PetRelationship"])
  {
    v4 = -5848;
  }

  else if ([v3 isEqualToString:@"Podcasts.Podcast"])
  {
    v4 = -23352;
  }

  else if ([v3 isEqualToString:@"ToolKit.Tool"])
  {
    v4 = 7556;
  }

  else if ([v3 isEqualToString:@"UserAccount.Identity"])
  {
    v4 = -4027;
  }

  else if ([v3 isEqualToString:@"Wallet.Pass"])
  {
    v4 = -19416;
  }

  else if ([v3 isEqualToString:@"App.IntentVocabulary.CustomCarName"])
  {
    v4 = 800;
  }

  else if ([v3 isEqualToString:@"App.IntentVocabulary.CustomCarProfileName"])
  {
    v4 = 14816;
  }

  else if ([v3 isEqualToString:@"App.IntentVocabulary.CustomContactGroupName"])
  {
    v4 = -2167;
  }

  else if ([v3 isEqualToString:@"App.IntentVocabulary.CustomContactName"])
  {
    v4 = -4184;
  }

  else if ([v3 isEqualToString:@"App.IntentVocabulary.CustomMediaAudiobookAuthorName"])
  {
    v4 = -27285;
  }

  else if ([v3 isEqualToString:@"App.IntentVocabulary.CustomMediaAudiobookTitle"])
  {
    v4 = 14706;
  }

  else if ([v3 isEqualToString:@"App.IntentVocabulary.CustomMediaMusicArtistName"])
  {
    v4 = 7719;
  }

  else if ([v3 isEqualToString:@"App.IntentVocabulary.CustomMediaPlaylistTitle"])
  {
    v4 = -32571;
  }

  else if ([v3 isEqualToString:@"App.IntentVocabulary.CustomMediaShowTitle"])
  {
    v4 = 15572;
  }

  else if ([v3 isEqualToString:@"App.IntentVocabulary.CustomNotebookItemGroupName"])
  {
    v4 = 5595;
  }

  else if ([v3 isEqualToString:@"App.IntentVocabulary.CustomNotebookItemTitle"])
  {
    v4 = 26512;
  }

  else if ([v3 isEqualToString:@"App.IntentVocabulary.CustomPaymentsAccountNickname"])
  {
    v4 = 25883;
  }

  else if ([v3 isEqualToString:@"App.IntentVocabulary.CustomPaymentsOrganizationName"])
  {
    v4 = 16251;
  }

  else if ([v3 isEqualToString:@"App.IntentVocabulary.CustomPhotoAlbumName"])
  {
    v4 = -12054;
  }

  else if ([v3 isEqualToString:@"App.IntentVocabulary.CustomPhotoTag"])
  {
    v4 = 13884;
  }

  else if ([v3 isEqualToString:@"App.IntentVocabulary.CustomVoiceCommandName"])
  {
    v4 = 30598;
  }

  else if ([v3 isEqualToString:@"App.IntentVocabulary.CustomWorkoutActivityName"])
  {
    v4 = -20601;
  }

  else if ([v3 isEqualToString:@"App.IntentVocabulary.GlobalMediaAudiobookAuthor"])
  {
    v4 = 14025;
  }

  else if ([v3 isEqualToString:@"App.IntentVocabulary.GlobalMediaAudiobookTitle"])
  {
    v4 = 8194;
  }

  else if ([v3 isEqualToString:@"App.IntentVocabulary.GlobalMediaMusicArtistName"])
  {
    v4 = 3615;
  }

  else if ([v3 isEqualToString:@"App.IntentVocabulary.GlobalMediaPlaylistTitle"])
  {
    v4 = -31229;
  }

  else if ([v3 isEqualToString:@"App.IntentVocabulary.GlobalMediaShowTitle"])
  {
    v4 = -29477;
  }

  else if ([v3 isEqualToString:@"App.Intents.CuratedEntity"])
  {
    v4 = -26111;
  }

  else if ([v3 isEqualToString:@"App.Intents.ExtractedEntity"])
  {
    v4 = 27325;
  }

  else if ([v3 isEqualToString:@"App.Intents.IndexedEntity"])
  {
    v4 = -18195;
  }

  else if ([v3 isEqualToString:@"App.Intents.IndexedEnum"])
  {
    v4 = -22925;
  }

  else if ([v3 isEqualToString:@"App.Shortcut.Entity"])
  {
    v4 = 7822;
  }

  else if ([v3 isEqualToString:@"App.Shortcut.Phrase"])
  {
    v4 = 12010;
  }

  else if ([v3 isEqualToString:@"Siri.CompanionContext.Audio"])
  {
    v4 = -9026;
  }

  else if ([v3 isEqualToString:@"Siri.Montara.SharedPreferences"])
  {
    v4 = -21006;
  }

  else if ([v3 isEqualToString:@"Siri.PrivateLearning.Contact"])
  {
    v4 = -11935;
  }

  else if ([v3 isEqualToString:@"Siri.PrivateLearning.Media"])
  {
    v4 = -3378;
  }

  else if ([v3 isEqualToString:@"Wallet.PaymentsCommerce.ExtractedOrder"])
  {
    v4 = 7952;
  }

  else
  {
    v4 = *MEMORY[0x1E69939A8];
  }

  return v4;
}

+ (id)setIdentifierForItemType:(unsigned __int16)a3
{
  if (a3 > 29396)
  {
    if (a3 > 46119)
    {
      if (a3 > 54384)
      {
        if (a3 > 61351)
        {
          v3 = 62157;
          v11 = @"App.IntentVocabulary.CustomContactGroupName";
          if (a3 != 63369)
          {
            v11 = 0;
          }

          if (a3 == 62158)
          {
            v5 = @"Siri.PrivateLearning.Media";
          }

          else
          {
            v5 = v11;
          }

          v6 = @"App.IntentVocabulary.CustomContactName";
          v7 = a3 == 61509;
          v8 = @"UserAccount.Identity";
          v9 = 61352;
          goto LABEL_28;
        }

        v32 = 54385;
        v33 = @"Calendar.Event";
        v34 = 56510;
        v35 = @"Siri.CompanionContext.Audio";
        v36 = 59688;
        v37 = @"Photos.PetRelationship";
        goto LABEL_95;
      }

      v3 = 53481;
      v5 = @"App.IntentVocabulary.CustomPhotoAlbumName";
      v30 = @"Fitness.Guest";
      if (a3 != 53614)
      {
        v30 = 0;
      }

      if (a3 == 53601)
      {
        v31 = @"Siri.PrivateLearning.Contact";
      }

      else
      {
        v31 = v30;
      }

      if (a3 != 53482)
      {
        v5 = v31;
      }

      v20 = 46120;
      v21 = @"Wallet.Pass";
      v22 = @"App.Intents.IndexedEntity";
      v23 = 47341;
      v24 = a3 == 49066;
      v25 = @"CarPlay.RadioStation";
    }

    else
    {
      if (a3 > 38250)
      {
        if (a3 > 42183)
        {
          v3 = 44529;
          v4 = @"App.IntentVocabulary.CustomWorkoutActivityName";
          if (a3 != 44935)
          {
            v4 = 0;
          }

          if (a3 == 44530)
          {
            v5 = @"Siri.Montara.SharedPreferences";
          }

          else
          {
            v5 = v4;
          }

          v6 = @"Podcasts.Podcast";
          v7 = a3 == 42611;
          v8 = @"App.Intents.IndexedEnum";
          v9 = 42184;
LABEL_28:
          if (!v7)
          {
            v8 = 0;
          }

          if (a3 != v9)
          {
            v6 = v8;
          }

LABEL_89:
          if (a3 <= v3)
          {
            return v6;
          }

          else
          {
            return v5;
          }
        }

        v32 = 38251;
        v33 = @"App.IntentVocabulary.CustomMediaAudiobookAuthorName";
        v34 = 39425;
        v35 = @"App.Intents.CuratedEntity";
        v36 = 40568;
        v37 = @"PeopleSuggester.ContactPrior";
        goto LABEL_95;
      }

      v3 = 34306;
      v5 = @"App.IntentVocabulary.GlobalMediaPlaylistTitle";
      v28 = @"App.InstalledApp";
      if (a3 != 36434)
      {
        v28 = 0;
      }

      if (a3 == 36059)
      {
        v29 = @"App.IntentVocabulary.GlobalMediaShowTitle";
      }

      else
      {
        v29 = v28;
      }

      if (a3 != 34307)
      {
        v5 = v29;
      }

      v20 = 29397;
      v21 = @"ToolKitToolDefinition";
      v22 = @"App.IntentVocabulary.CustomVoiceCommandName";
      v23 = 30598;
      v24 = a3 == 32965;
      v25 = @"App.IntentVocabulary.CustomMediaPlaylistTitle";
    }

    goto LABEL_82;
  }

  if (a3 > 14024)
  {
    if (a3 > 17033)
    {
      if (a3 > 25882)
      {
        v3 = 27121;
        v10 = @"App.Intents.ExtractedEntity";
        if (a3 != 27325)
        {
          v10 = 0;
        }

        if (a3 == 27122)
        {
          v5 = @"FindMy.Device";
        }

        else
        {
          v5 = v10;
        }

        v6 = @"App.IntentVocabulary.CustomPaymentsAccountNickname";
        v7 = a3 == 26512;
        v8 = @"App.IntentVocabulary.CustomNotebookItemTitle";
        v9 = 25883;
        goto LABEL_28;
      }

      v32 = 17034;
      v33 = @"HomeKit.HomeServiceArea";
      v34 = 18540;
      v35 = @"MediaLibrary.Media";
      v36 = 19668;
      v37 = @"Contacts.Contact";
LABEL_95:
      if (a3 == v36)
      {
        v38 = v37;
      }

      else
      {
        v38 = 0;
      }

      if (a3 == v34)
      {
        v39 = v35;
      }

      else
      {
        v39 = v38;
      }

      if (a3 == v32)
      {
        return v33;
      }

      else
      {
        return v39;
      }
    }

    v3 = 15571;
    v5 = @"App.IntentVocabulary.CustomMediaShowTitle";
    v18 = @"App.IntentVocabulary.CustomPaymentsOrganizationName";
    if (a3 != 16251)
    {
      v18 = 0;
    }

    if (a3 == 15757)
    {
      v19 = @"Location.SignificantLocation";
    }

    else
    {
      v19 = v18;
    }

    if (a3 != 15572)
    {
      v5 = v19;
    }

    v20 = 14025;
    v21 = @"App.IntentVocabulary.GlobalMediaAudiobookAuthor";
    v22 = @"App.IntentVocabulary.CustomMediaAudiobookTitle";
    v23 = 14706;
    v24 = a3 == 14816;
    v25 = @"App.IntentVocabulary.CustomCarProfileName";
LABEL_82:
    if (!v24)
    {
      v25 = 0;
    }

    if (a3 != v23)
    {
      v22 = v25;
    }

    if (a3 == v20)
    {
      v6 = v21;
    }

    else
    {
      v6 = v22;
    }

    goto LABEL_89;
  }

  if (a3 > 7821)
  {
    v3 = 12009;
    v5 = @"App.Shortcut.Phrase";
    v26 = @"App.IntentVocabulary.CustomPhotoTag";
    if (a3 != 13884)
    {
      v26 = 0;
    }

    if (a3 == 12996)
    {
      v27 = @"Health.Medication";
    }

    else
    {
      v27 = v26;
    }

    if (a3 != 12010)
    {
      v5 = v27;
    }

    v20 = 7822;
    v21 = @"App.Shortcut.Entity";
    v22 = @"Wallet.PaymentsCommerce.ExtractedOrder";
    v23 = 7952;
    v24 = a3 == 8194;
    v25 = @"App.IntentVocabulary.GlobalMediaAudiobookTitle";
    goto LABEL_82;
  }

  v12 = @"ToolKit.Tool";
  v13 = @"App.IntentVocabulary.CustomMediaMusicArtistName";
  if (a3 != 7719)
  {
    v13 = 0;
  }

  if (a3 == 7690)
  {
    v14 = @"HomeKit.Home";
  }

  else
  {
    v14 = v13;
  }

  v15 = @"App.IntentVocabulary.CustomCarName";
  if (a3 != 7556)
  {
    v12 = v14;
  }

  v16 = @"App.IntentVocabulary.CustomNotebookItemGroupName";
  if (a3 != 5595)
  {
    v16 = 0;
  }

  if (a3 == 3615)
  {
    v16 = @"App.IntentVocabulary.GlobalMediaMusicArtistName";
  }

  if (a3 != 800)
  {
    v15 = v16;
  }

  if (a3 <= 7555)
  {
    return v15;
  }

  else
  {
    return v12;
  }
}

+ (Class)itemMessageSubclassForFieldType:(unsigned __int16)a3
{
  v4 = 0;
  if (a3 <= 27125)
  {
    if (a3 > 14710)
    {
      if (a3 > 19678)
      {
        if (a3 > 25885)
        {
          if (a3 > 26514)
          {
            if (a3 == 26515 || a3 == 26516)
            {
              v5 = off_1E73E5798;
            }

            else
            {
              if (a3 != 26517)
              {
                goto LABEL_321;
              }

              v5 = off_1E73E57A0;
            }
          }

          else if (a3 == 25886 || a3 == 25887)
          {
            v5 = off_1E73E57A8;
          }

          else
          {
            if (a3 != 25888)
            {
              goto LABEL_321;
            }

            v5 = off_1E73E57B0;
          }

          goto LABEL_320;
        }

        switch(a3)
        {
          case 0x4CDFu:
          case 0x4CE0u:
          case 0x4CE1u:
          case 0x4CE2u:
          case 0x4CE3u:
          case 0x4CE4u:
          case 0x4CE5u:
          case 0x4CE6u:
          case 0x4CE7u:
          case 0x4CE8u:
          case 0x4CE9u:
          case 0x4CEAu:
          case 0x4CEBu:
          case 0x4CECu:
          case 0x4CEDu:
          case 0x4CEEu:
          case 0x4CEFu:
          case 0x4CF0u:
          case 0x4CF1u:
          case 0x4CF2u:
          case 0x4CF3u:
          case 0x4CF4u:
          case 0x4CF5u:
          case 0x4CF6u:
          case 0x4CF9u:
          case 0x4D01u:
          case 0x4D16u:
          case 0x4D17u:
          case 0x4D18u:
          case 0x4D19u:
          case 0x4D1Au:
          case 0x4D1Bu:
          case 0x4D1Cu:
          case 0x4D20u:
          case 0x4D21u:
          case 0x4D22u:
          case 0x4D23u:
          case 0x4D24u:
          case 0x4D25u:
          case 0x4D26u:
          case 0x4D27u:
          case 0x4D28u:
          case 0x4D29u:
          case 0x4D2Au:
          case 0x4D2Bu:
          case 0x4D2Cu:
          case 0x4D2Du:
          case 0x4D2Eu:
          case 0x4D2Fu:
          case 0x4D30u:
          case 0x4D31u:
          case 0x4D32u:
          case 0x4D33u:
          case 0x4D34u:
          case 0x4D35u:
          case 0x4D37u:
          case 0x4D39u:
          case 0x4D3Du:
          case 0x4D3Eu:
          case 0x4D3Fu:
          case 0x4D40u:
          case 0x4D41u:
            v5 = off_1E73E5950;
            goto LABEL_320;
          case 0x4CF8u:
            v5 = off_1E73E5970;
            goto LABEL_320;
          default:
            goto LABEL_321;
        }

        goto LABEL_321;
      }

      if (a3 > 17035)
      {
        if (a3 > 17041)
        {
          switch(a3)
          {
            case 0x486Du:
            case 0x486Eu:
            case 0x486Fu:
            case 0x4870u:
            case 0x4871u:
            case 0x4872u:
            case 0x4873u:
            case 0x4874u:
            case 0x4875u:
            case 0x4876u:
            case 0x4877u:
            case 0x4878u:
            case 0x487Bu:
            case 0x487Cu:
            case 0x487Du:
            case 0x487Eu:
            case 0x487Fu:
            case 0x4880u:
            case 0x4881u:
            case 0x4882u:
            case 0x4883u:
            case 0x4884u:
            case 0x4885u:
            case 0x4886u:
              v5 = off_1E73E5A78;
              goto LABEL_320;
            case 0x4879u:
            case 0x487Au:
            case 0x4887u:
            case 0x4888u:
              v5 = off_1E73E5A90;
              goto LABEL_320;
            default:
              if (a3 == 17042)
              {
                goto LABEL_319;
              }

              if (a3 != 17043)
              {
                goto LABEL_321;
              }

              v5 = off_1E73E5A28;
              break;
          }

          goto LABEL_320;
        }

        if (a3 > 17038)
        {
          if (a3 == 17039 || a3 == 17040)
          {
            goto LABEL_319;
          }

          v11 = 17041;
        }

        else
        {
          if (a3 == 17036 || a3 == 17037)
          {
            goto LABEL_319;
          }

          v11 = 17038;
        }

LABEL_302:
        if (a3 != v11)
        {
          goto LABEL_321;
        }

LABEL_319:
        v5 = off_1E73E5A18;
        goto LABEL_320;
      }

      if (a3 > 15761)
      {
        if (a3 <= 16253)
        {
          switch(a3)
          {
            case 0x3D92u:
              v5 = off_1E73E5B90;
              goto LABEL_320;
            case 0x3D93u:
            case 0x3D98u:
            case 0x3D99u:
            case 0x3D9Au:
            case 0x3D9Bu:
            case 0x3D9Cu:
            case 0x3D9Du:
            case 0x3D9Eu:
            case 0x3D9Fu:
            case 0x3DA0u:
            case 0x3DA1u:
            case 0x3DA2u:
            case 0x3DA3u:
            case 0x3DA4u:
            case 0x3DA5u:
            case 0x3DA6u:
            case 0x3DA7u:
            case 0x3DA8u:
            case 0x3DA9u:
            case 0x3DAAu:
            case 0x3DABu:
            case 0x3DACu:
            case 0x3DADu:
              v5 = off_1E73E5B88;
              goto LABEL_320;
            default:
              goto LABEL_321;
          }

          goto LABEL_321;
        }

        if (a3 <= 16255)
        {
          v5 = off_1E73E57B8;
          goto LABEL_320;
        }

        if (a3 == 16256)
        {
          v5 = off_1E73E57C0;
          goto LABEL_320;
        }

        v11 = 17035;
        goto LABEL_302;
      }

      if (a3 > 14820)
      {
        if (a3 > 15575)
        {
          if (a3 != 15576)
          {
            if (a3 != 15577)
            {
              goto LABEL_321;
            }

            v5 = off_1E73E5780;
            goto LABEL_320;
          }
        }

        else
        {
          if (a3 == 14821)
          {
            v5 = off_1E73E5710;
            goto LABEL_320;
          }

          if (a3 != 15575)
          {
            goto LABEL_321;
          }
        }

        v5 = off_1E73E5778;
        goto LABEL_320;
      }

      if (a3 == 14711)
      {
        v5 = off_1E73E5750;
        goto LABEL_320;
      }

      if (a3 != 14819 && a3 != 14820)
      {
        goto LABEL_321;
      }

      v5 = off_1E73E5708;
LABEL_320:
      v16 = *v5;
      v4 = objc_opt_class();
      goto LABEL_321;
    }

    if (a3 <= 7824)
    {
      if (a3 > 5598)
      {
        switch(a3)
        {
          case 0x1E0Bu:
          case 0x1E0Cu:
          case 0x1E0Du:
          case 0x1E0Eu:
          case 0x1E0Fu:
          case 0x1E10u:
          case 0x1E11u:
          case 0x1E12u:
          case 0x1E15u:
          case 0x1E16u:
          case 0x1E17u:
          case 0x1E18u:
          case 0x1E19u:
          case 0x1E1Au:
          case 0x1E1Bu:
          case 0x1E1Cu:
          case 0x1E1Du:
          case 0x1E1Eu:
            v5 = off_1E73E59E8;
            goto LABEL_320;
          case 0x1E13u:
          case 0x1E14u:
            v5 = off_1E73E59F0;
            goto LABEL_320;
          case 0x1E1Fu:
          case 0x1E20u:
          case 0x1E21u:
          case 0x1E22u:
          case 0x1E23u:
          case 0x1E24u:
          case 0x1E25u:
          case 0x1E26u:
          case 0x1E27u:
          case 0x1E28u:
          case 0x1E29u:
            goto LABEL_321;
          case 0x1E2Au:
          case 0x1E2Bu:
            v5 = off_1E73E5758;
            goto LABEL_320;
          case 0x1E2Cu:
            v5 = off_1E73E5760;
            goto LABEL_320;
          default:
            if (a3 == 5599)
            {
              goto LABEL_327;
            }

            if (a3 != 5600)
            {
              goto LABEL_321;
            }

            v5 = off_1E73E5790;
            break;
        }

        goto LABEL_320;
      }

      if (a3 <= 3618)
      {
        if (a3 == 803 || a3 == 804)
        {
          v5 = off_1E73E56F8;
        }

        else
        {
          if (a3 != 805)
          {
            goto LABEL_321;
          }

          v5 = off_1E73E5700;
        }

        goto LABEL_320;
      }

      switch(a3)
      {
        case 0xE23u:
          v5 = off_1E73E5858;
          goto LABEL_320;
        case 0xE24u:
          v5 = off_1E73E5850;
          goto LABEL_320;
        case 0x15DEu:
LABEL_327:
          v5 = off_1E73E5788;
          goto LABEL_320;
      }

      goto LABEL_321;
    }

    if (a3 <= 8197)
    {
      switch(a3)
      {
        case 0x1E91u:
        case 0x1E92u:
        case 0x1E93u:
        case 0x1E94u:
        case 0x1E96u:
          v5 = off_1E73E5910;
          goto LABEL_320;
        case 0x1E95u:
          v5 = off_1E73E5918;
          goto LABEL_320;
        case 0x1F11u:
        case 0x1F12u:
        case 0x1F13u:
        case 0x1F14u:
        case 0x1F15u:
        case 0x1F16u:
        case 0x1F17u:
        case 0x1F18u:
        case 0x1F19u:
        case 0x1F1Au:
        case 0x1F1Bu:
        case 0x1F1Cu:
        case 0x1F1Du:
        case 0x1F1Eu:
        case 0x1F1Fu:
        case 0x1F20u:
        case 0x1F21u:
        case 0x1F22u:
        case 0x1F23u:
        case 0x1F24u:
        case 0x1F25u:
        case 0x1F26u:
        case 0x1F27u:
        case 0x1F28u:
        case 0x1F29u:
        case 0x1F2Au:
        case 0x1F2Bu:
        case 0x1F2Cu:
        case 0x1F2Du:
        case 0x1F2Eu:
        case 0x1F2Fu:
        case 0x1F30u:
        case 0x1F31u:
        case 0x1F32u:
        case 0x1F33u:
        case 0x1F34u:
        case 0x1F35u:
        case 0x1F36u:
        case 0x1F37u:
        case 0x1F38u:
        case 0x1F39u:
        case 0x1F3Au:
        case 0x1F3Bu:
        case 0x1F3Cu:
        case 0x1F3Du:
        case 0x1F3Eu:
        case 0x1F3Fu:
        case 0x1F40u:
        case 0x1F41u:
        case 0x1F42u:
        case 0x1F43u:
        case 0x1F44u:
        case 0x1F45u:
        case 0x1F46u:
        case 0x1F47u:
        case 0x1F48u:
        case 0x1F49u:
        case 0x1F4Au:
        case 0x1F4Bu:
        case 0x1F4Cu:
        case 0x1F4Du:
        case 0x1F4Eu:
        case 0x1F4Fu:
        case 0x1F50u:
        case 0x1F51u:
        case 0x1F52u:
        case 0x1F54u:
        case 0x1F55u:
        case 0x1F56u:
        case 0x1F57u:
        case 0x1F58u:
        case 0x1F59u:
        case 0x1F5Au:
        case 0x1F5Bu:
        case 0x1F5Cu:
        case 0x1F5Du:
        case 0x1F5Eu:
        case 0x1F5Fu:
        case 0x1F60u:
        case 0x1F61u:
        case 0x1F62u:
        case 0x1F63u:
        case 0x1F64u:
        case 0x1F65u:
          v5 = off_1E73E6150;
          goto LABEL_320;
        case 0x1F53u:
          v5 = off_1E73E6178;
          goto LABEL_320;
        default:
          goto LABEL_321;
      }

      goto LABEL_321;
    }

    if (a3 > 12999)
    {
      if (a3 > 13888)
      {
        if (a3 <= 14029)
        {
          if (a3 == 13889)
          {
            v5 = off_1E73E57E0;
          }

          else
          {
            if (a3 != 14029)
            {
              goto LABEL_321;
            }

            v5 = off_1E73E5838;
          }

          goto LABEL_320;
        }

        if (a3 == 14030)
        {
          v5 = off_1E73E5830;
          goto LABEL_320;
        }

        if (a3 != 14709 && a3 != 14710)
        {
          goto LABEL_321;
        }

        v5 = off_1E73E5748;
        goto LABEL_320;
      }

      if (a3 > 13886)
      {
        v5 = off_1E73E57D8;
        goto LABEL_320;
      }

      if (a3 != 13000)
      {
        if (a3 != 13001)
        {
          goto LABEL_321;
        }

        v5 = off_1E73E59D0;
        goto LABEL_320;
      }

LABEL_311:
      v5 = off_1E73E59C8;
      goto LABEL_320;
    }

    if (a3 > 12014)
    {
      if (a3 > 12016)
      {
        if (a3 != 12017)
        {
          if (a3 != 12999)
          {
            goto LABEL_321;
          }

          goto LABEL_311;
        }
      }

      else if (a3 != 12015)
      {
        v5 = off_1E73E5928;
        goto LABEL_320;
      }
    }

    else if (a3 <= 12012)
    {
      if (a3 == 8198)
      {
        v5 = off_1E73E5848;
      }

      else
      {
        if (a3 != 8199)
        {
          goto LABEL_321;
        }

        v5 = off_1E73E5840;
      }

      goto LABEL_320;
    }

    v5 = off_1E73E5920;
    goto LABEL_320;
  }

  if (a3 <= 29399)
  {
    switch(a3)
    {
      case 0x69F6u:
      case 0x69F7u:
      case 0x69FBu:
      case 0x69FCu:
        v5 = off_1E73E59A0;
        goto LABEL_320;
      case 0x69F8u:
        v5 = off_1E73E59A8;
        goto LABEL_320;
      case 0x69F9u:
      case 0x69FAu:
      case 0x69FDu:
      case 0x69FEu:
      case 0x69FFu:
      case 0x6A00u:
      case 0x6A01u:
      case 0x6A02u:
      case 0x6A03u:
      case 0x6A04u:
      case 0x6A05u:
      case 0x6A06u:
      case 0x6A07u:
      case 0x6A08u:
      case 0x6A09u:
      case 0x6A0Au:
      case 0x6A0Bu:
      case 0x6A0Cu:
      case 0x6A0Du:
      case 0x6A0Eu:
      case 0x6A0Fu:
      case 0x6A10u:
      case 0x6A11u:
      case 0x6A12u:
      case 0x6A13u:
      case 0x6A14u:
      case 0x6A15u:
      case 0x6A16u:
      case 0x6A17u:
      case 0x6A18u:
      case 0x6A19u:
      case 0x6A1Au:
      case 0x6A1Bu:
      case 0x6A1Cu:
      case 0x6A1Du:
      case 0x6A1Eu:
      case 0x6A1Fu:
      case 0x6A20u:
      case 0x6A21u:
      case 0x6A22u:
      case 0x6A23u:
      case 0x6A24u:
      case 0x6A25u:
      case 0x6A26u:
      case 0x6A27u:
      case 0x6A28u:
      case 0x6A29u:
      case 0x6A2Au:
      case 0x6A2Bu:
      case 0x6A2Cu:
      case 0x6A2Du:
      case 0x6A2Eu:
      case 0x6A2Fu:
      case 0x6A30u:
      case 0x6A31u:
      case 0x6A32u:
      case 0x6A33u:
      case 0x6A34u:
      case 0x6A35u:
      case 0x6A36u:
      case 0x6A37u:
      case 0x6A38u:
      case 0x6A39u:
      case 0x6A3Au:
      case 0x6A3Bu:
      case 0x6A3Cu:
      case 0x6A3Du:
      case 0x6A3Eu:
      case 0x6A3Fu:
      case 0x6A40u:
      case 0x6A41u:
      case 0x6A42u:
      case 0x6A43u:
      case 0x6A44u:
      case 0x6A45u:
      case 0x6A46u:
      case 0x6A47u:
      case 0x6A48u:
      case 0x6A49u:
      case 0x6A4Au:
      case 0x6A4Bu:
      case 0x6A4Cu:
      case 0x6A4Du:
      case 0x6A4Eu:
      case 0x6A4Fu:
      case 0x6A50u:
      case 0x6A51u:
      case 0x6A52u:
      case 0x6A53u:
      case 0x6A54u:
      case 0x6A55u:
      case 0x6A56u:
      case 0x6A57u:
      case 0x6A58u:
      case 0x6A59u:
      case 0x6A5Au:
      case 0x6A5Bu:
      case 0x6A5Cu:
      case 0x6A5Du:
      case 0x6A5Eu:
      case 0x6A5Fu:
      case 0x6A60u:
      case 0x6A61u:
      case 0x6A62u:
      case 0x6A63u:
      case 0x6A64u:
      case 0x6A65u:
      case 0x6A66u:
      case 0x6A67u:
      case 0x6A68u:
      case 0x6A69u:
      case 0x6A6Au:
      case 0x6A6Bu:
      case 0x6A6Cu:
      case 0x6A6Du:
      case 0x6A6Eu:
      case 0x6A6Fu:
      case 0x6A70u:
      case 0x6A71u:
      case 0x6A72u:
      case 0x6A73u:
      case 0x6A74u:
      case 0x6A75u:
      case 0x6A76u:
      case 0x6A77u:
      case 0x6A78u:
      case 0x6A79u:
      case 0x6A7Au:
      case 0x6A7Bu:
      case 0x6A7Cu:
      case 0x6A7Du:
      case 0x6A7Eu:
      case 0x6A7Fu:
      case 0x6A80u:
      case 0x6A81u:
      case 0x6A82u:
      case 0x6A83u:
      case 0x6A84u:
      case 0x6A85u:
      case 0x6A86u:
      case 0x6A87u:
      case 0x6A88u:
      case 0x6A89u:
      case 0x6A8Au:
      case 0x6A8Bu:
      case 0x6A8Cu:
      case 0x6A8Du:
      case 0x6A8Eu:
      case 0x6A8Fu:
      case 0x6A90u:
      case 0x6A91u:
      case 0x6A92u:
      case 0x6A93u:
      case 0x6A94u:
      case 0x6A95u:
      case 0x6A96u:
      case 0x6A97u:
      case 0x6A98u:
      case 0x6A99u:
      case 0x6A9Au:
      case 0x6A9Bu:
      case 0x6A9Cu:
      case 0x6A9Du:
      case 0x6A9Eu:
      case 0x6A9Fu:
      case 0x6AA0u:
      case 0x6AA1u:
      case 0x6AA2u:
      case 0x6AA3u:
      case 0x6AA4u:
      case 0x6AA5u:
      case 0x6AA6u:
      case 0x6AA7u:
      case 0x6AA8u:
      case 0x6AA9u:
      case 0x6AAAu:
      case 0x6AABu:
      case 0x6AACu:
      case 0x6AADu:
      case 0x6AAEu:
      case 0x6AAFu:
      case 0x6AB0u:
      case 0x6AB1u:
      case 0x6AB2u:
      case 0x6AB3u:
      case 0x6AB4u:
      case 0x6AB5u:
      case 0x6AB6u:
      case 0x6AB7u:
      case 0x6AB8u:
      case 0x6AB9u:
      case 0x6ABAu:
      case 0x6ABBu:
      case 0x6ABCu:
      case 0x6ABDu:
        goto LABEL_321;
      case 0x6ABEu:
      case 0x6ABFu:
      case 0x6AC0u:
      case 0x6AC1u:
      case 0x6AC2u:
      case 0x6AC3u:
      case 0x6AC4u:
      case 0x6AC5u:
      case 0x6AC6u:
      case 0x6AC7u:
      case 0x6AC8u:
      case 0x6AC9u:
      case 0x6ACAu:
      case 0x6ACBu:
      case 0x6ACCu:
      case 0x6ACDu:
      case 0x6ACEu:
      case 0x6ACFu:
      case 0x6AD0u:
      case 0x6AD1u:
      case 0x6AD2u:
      case 0x6AD3u:
      case 0x6AD4u:
      case 0x6AD5u:
      case 0x6AD6u:
      case 0x6AD7u:
      case 0x6AD8u:
      case 0x6AD9u:
      case 0x6ADAu:
      case 0x6ADBu:
      case 0x6ADCu:
      case 0x6ADDu:
      case 0x6ADEu:
      case 0x6ADFu:
      case 0x6AE0u:
      case 0x6AE1u:
      case 0x6AE2u:
      case 0x6AE3u:
      case 0x6AE4u:
      case 0x6AE5u:
      case 0x6AE6u:
      case 0x6AE7u:
      case 0x6AE8u:
      case 0x6AE9u:
      case 0x6AEAu:
      case 0x6AEBu:
      case 0x6AECu:
      case 0x6AEDu:
      case 0x6AEEu:
      case 0x6AEFu:
      case 0x6AF0u:
      case 0x6AF1u:
      case 0x6AF2u:
      case 0x6AF3u:
      case 0x6AF4u:
      case 0x6AF5u:
      case 0x6AF6u:
      case 0x6AF7u:
      case 0x6AF8u:
      case 0x6AF9u:
      case 0x6AFAu:
      case 0x6AFBu:
      case 0x6AFCu:
      case 0x6AFDu:
      case 0x6AFEu:
      case 0x6AFFu:
      case 0x6B00u:
      case 0x6B01u:
      case 0x6B02u:
      case 0x6B03u:
      case 0x6B04u:
      case 0x6B05u:
      case 0x6B06u:
      case 0x6B07u:
      case 0x6B08u:
      case 0x6B09u:
      case 0x6B0Au:
      case 0x6B0Bu:
      case 0x6B0Cu:
      case 0x6B0Du:
      case 0x6B0Eu:
      case 0x6B0Fu:
      case 0x6B10u:
      case 0x6B11u:
      case 0x6B12u:
      case 0x6B13u:
      case 0x6B14u:
      case 0x6B15u:
      case 0x6B16u:
      case 0x6B17u:
      case 0x6B18u:
      case 0x6B19u:
      case 0x6B1Au:
      case 0x6B1Bu:
      case 0x6B1Cu:
      case 0x6B1Du:
      case 0x6B1Eu:
      case 0x6B1Fu:
      case 0x6B20u:
      case 0x6B21u:
      case 0x6B22u:
      case 0x6B23u:
      case 0x6B24u:
      case 0x6B25u:
      case 0x6B26u:
      case 0x6B27u:
      case 0x6B28u:
      case 0x6B29u:
      case 0x6B2Au:
      case 0x6B2Bu:
      case 0x6B2Cu:
      case 0x6B2Du:
      case 0x6B2Eu:
      case 0x6B2Fu:
      case 0x6B30u:
      case 0x6B31u:
      case 0x6B32u:
      case 0x6B33u:
      case 0x6B34u:
      case 0x6B35u:
      case 0x6B36u:
      case 0x6B37u:
      case 0x6B38u:
      case 0x6B39u:
      case 0x6B3Au:
      case 0x6B3Bu:
      case 0x6B3Cu:
      case 0x6B3Du:
      case 0x6B3Eu:
      case 0x6B3Fu:
      case 0x6B40u:
      case 0x6B41u:
      case 0x6B42u:
      case 0x6B43u:
      case 0x6B44u:
      case 0x6B45u:
      case 0x6B46u:
      case 0x6B47u:
      case 0x6B48u:
      case 0x6B49u:
      case 0x6B4Au:
      case 0x6B4Bu:
      case 0x6B4Cu:
      case 0x6B4Du:
      case 0x6B4Eu:
      case 0x6B4Fu:
      case 0x6B50u:
      case 0x6B51u:
      case 0x6B52u:
      case 0x6B53u:
      case 0x6B54u:
      case 0x6B55u:
      case 0x6B56u:
      case 0x6B57u:
      case 0x6B58u:
      case 0x6B59u:
      case 0x6B5Au:
      case 0x6B5Bu:
      case 0x6B5Cu:
      case 0x6B5Du:
      case 0x6B5Eu:
      case 0x6B5Fu:
      case 0x6B60u:
      case 0x6B61u:
      case 0x6B62u:
      case 0x6B63u:
      case 0x6B64u:
      case 0x6B65u:
      case 0x6B66u:
      case 0x6B67u:
      case 0x6B68u:
      case 0x6B69u:
      case 0x6B6Au:
      case 0x6B6Bu:
      case 0x6B6Cu:
      case 0x6B6Du:
      case 0x6B6Eu:
      case 0x6B6Fu:
      case 0x6B70u:
      case 0x6B71u:
      case 0x6B72u:
      case 0x6B73u:
      case 0x6B74u:
      case 0x6B75u:
        v5 = off_1E73E5890;
        goto LABEL_320;
      case 0x6B76u:
        v5 = off_1E73E58B0;
        goto LABEL_320;
      default:
        if ((a3 - 29398) >= 2)
        {
          goto LABEL_321;
        }

        v5 = off_1E73E5CA0;
        break;
    }

    goto LABEL_320;
  }

  if (a3 > 46122)
  {
    if (a3 <= 53486)
    {
      if (a3 <= 47342)
      {
        if (a3 > 46127)
        {
          if (a3 <= 46129)
          {
            if (a3 == 46128)
            {
              goto LABEL_218;
            }

            v8 = 46129;
          }

          else
          {
            if (a3 == 46130 || a3 == 46131)
            {
              goto LABEL_218;
            }

            v8 = 46132;
          }
        }

        else
        {
          if (a3 <= 46124)
          {
            if (a3 == 46123)
            {
              v5 = off_1E73E6190;
              goto LABEL_320;
            }

            v8 = 46124;
            goto LABEL_217;
          }

          if (a3 == 46125 || a3 == 46126)
          {
            goto LABEL_218;
          }

          v8 = 46127;
        }

LABEL_217:
        if (a3 != v8)
        {
          goto LABEL_321;
        }

        goto LABEL_218;
      }

      if (a3 <= 49068)
      {
        switch(a3)
        {
          case 0xB8EFu:
          case 0xB8F0u:
          case 0xB8F3u:
          case 0xB8F4u:
          case 0xB8F5u:
          case 0xB8F8u:
          case 0xB8F9u:
          case 0xB8FAu:
          case 0xB8FCu:
          case 0xB8FDu:
          case 0xB8FEu:
          case 0xB8FFu:
          case 0xB900u:
          case 0xB901u:
            v5 = off_1E73E58F0;
            goto LABEL_320;
          case 0xB8F1u:
          case 0xB8FBu:
            v5 = off_1E73E58F8;
            goto LABEL_320;
          default:
            goto LABEL_321;
        }

        goto LABEL_321;
      }

      if (a3 > 49072)
      {
        if (a3 > 53484)
        {
          v5 = off_1E73E57C8;
          goto LABEL_320;
        }

        if (a3 != 49073)
        {
          if (a3 != 49074)
          {
            goto LABEL_321;
          }

          v5 = off_1E73E5B58;
          goto LABEL_320;
        }

        goto LABEL_234;
      }

      if (a3 > 49070)
      {
        if (a3 != 49071)
        {
          v9 = 49072;
LABEL_233:
          if (a3 != v9)
          {
            goto LABEL_321;
          }
        }
      }

      else if (a3 != 49069)
      {
        v9 = 49070;
        goto LABEL_233;
      }

LABEL_234:
      v5 = off_1E73E5B50;
      goto LABEL_320;
    }

    if (a3 <= 59690)
    {
      if (a3 <= 54389)
      {
        if (a3 > 53616)
        {
          if (a3 > 54387)
          {
            v5 = off_1E73E5940;
          }

          else if (a3 == 53617)
          {
            v5 = off_1E73E59B8;
          }

          else
          {
            if (a3 != 53618)
            {
              goto LABEL_321;
            }

            v5 = off_1E73E59C0;
          }

          goto LABEL_320;
        }

        if (a3 > 53604)
        {
          if (a3 != 53605)
          {
            if (a3 != 53606)
            {
              goto LABEL_321;
            }

            v5 = off_1E73E5BB8;
            goto LABEL_320;
          }
        }

        else
        {
          if (a3 == 53487)
          {
            v5 = off_1E73E57D0;
            goto LABEL_320;
          }

          if (a3 != 53604)
          {
            goto LABEL_321;
          }
        }

        v5 = off_1E73E5BB0;
        goto LABEL_320;
      }

      if (a3 <= 56513)
      {
        if (a3 <= 56511)
        {
          if (a3 == 54390)
          {
            v5 = off_1E73E5948;
            goto LABEL_320;
          }

          v13 = 56511;
          goto LABEL_280;
        }

        if (a3 != 56512)
        {
          v13 = 56513;
LABEL_280:
          if (a3 != v13)
          {
            goto LABEL_321;
          }
        }
      }

      else
      {
        if (a3 > 56515)
        {
          if (a3 == 56516)
          {
            v5 = off_1E73E5BA8;
            goto LABEL_320;
          }

          if (a3 == 59689 || a3 == 59690)
          {
            v5 = off_1E73E5B20;
            goto LABEL_320;
          }

          goto LABEL_321;
        }

        if (a3 != 56514)
        {
          v13 = 56515;
          goto LABEL_280;
        }
      }

      v5 = off_1E73E5BA0;
      goto LABEL_320;
    }

    if (a3 <= 62159)
    {
      if (a3 <= 61511)
      {
        if (a3 > 61355)
        {
          if (a3 != 61356)
          {
            if (a3 != 61357)
            {
              goto LABEL_321;
            }

            v5 = off_1E73E5730;
            goto LABEL_320;
          }
        }

        else
        {
          if (a3 == 59691)
          {
            v5 = off_1E73E5B28;
            goto LABEL_320;
          }

          if (a3 != 61355)
          {
            goto LABEL_321;
          }
        }

        v5 = off_1E73E5728;
        goto LABEL_320;
      }

      if (a3 <= 61513)
      {
        v5 = off_1E73E6140;
        goto LABEL_320;
      }

      if (a3 == 61514)
      {
        v5 = off_1E73E6148;
        goto LABEL_320;
      }

      v15 = 62159;
      goto LABEL_290;
    }

    if (a3 > 62163)
    {
      if (a3 > 63371)
      {
        if (a3 == 63372 || a3 == 63373)
        {
          v5 = off_1E73E5718;
        }

        else
        {
          if (a3 != 63374)
          {
            goto LABEL_321;
          }

          v5 = off_1E73E5720;
        }

        goto LABEL_320;
      }

      if (a3 != 62164)
      {
        if (a3 != 62165)
        {
          goto LABEL_321;
        }

        v5 = off_1E73E5BC8;
        goto LABEL_320;
      }

      goto LABEL_291;
    }

    if (a3 > 62161)
    {
      if (a3 != 62162)
      {
        v15 = 62163;
LABEL_290:
        if (a3 != v15)
        {
          goto LABEL_321;
        }
      }
    }

    else if (a3 != 62160)
    {
      v15 = 62161;
      goto LABEL_290;
    }

LABEL_291:
    v5 = off_1E73E5BC0;
    goto LABEL_320;
  }

  if (a3 > 40568)
  {
    if (a3 <= 42614)
    {
      if (a3 > 42184)
      {
        if (a3 <= 42188)
        {
          if (a3 > 42186)
          {
            if (a3 == 42187)
            {
              v5 = off_1E73E5B38;
              goto LABEL_320;
            }

            v12 = 42188;
            goto LABEL_276;
          }

          if (a3 != 42185)
          {
            v12 = 42186;
            goto LABEL_276;
          }
        }

        else
        {
          if (a3 > 42611)
          {
            if (a3 != 42612 && a3 != 42613)
            {
              v7 = 42614;
              goto LABEL_266;
            }

LABEL_267:
            v5 = off_1E73E5900;
            goto LABEL_320;
          }

          if (a3 != 42189)
          {
            v12 = 42190;
LABEL_276:
            if (a3 != v12)
            {
              goto LABEL_321;
            }
          }
        }

        v5 = off_1E73E5B30;
        goto LABEL_320;
      }

      if (a3 > 40572)
      {
        if (a3 > 40574)
        {
          if (a3 != 40575)
          {
            if (a3 != 40576)
            {
              goto LABEL_321;
            }

            v5 = off_1E73E5B18;
            goto LABEL_320;
          }

          goto LABEL_260;
        }

        if (a3 == 40573)
        {
LABEL_260:
          v5 = off_1E73E5B10;
          goto LABEL_320;
        }

        v10 = 40574;
      }

      else
      {
        if (a3 <= 40570)
        {
          if (a3 != 40569)
          {
            v10 = 40570;
            goto LABEL_241;
          }

          goto LABEL_260;
        }

        if (a3 == 40571)
        {
          goto LABEL_260;
        }

        v10 = 40572;
      }

LABEL_241:
      if (a3 != v10)
      {
        goto LABEL_321;
      }

      goto LABEL_260;
    }

    if (a3 <= 44530)
    {
      if (a3 > 42618)
      {
        if (a3 > 42620)
        {
          if (a3 == 42621)
          {
            goto LABEL_267;
          }

          v7 = 42622;
        }

        else
        {
          if (a3 == 42619)
          {
            goto LABEL_267;
          }

          v7 = 42620;
        }
      }

      else
      {
        if (a3 <= 42616)
        {
          if (a3 == 42615)
          {
            v5 = off_1E73E5908;
            goto LABEL_320;
          }

          v7 = 42616;
          goto LABEL_266;
        }

        if (a3 == 42617)
        {
          goto LABEL_267;
        }

        v7 = 42618;
      }

LABEL_266:
      if (a3 != v7)
      {
        goto LABEL_321;
      }

      goto LABEL_267;
    }

    if (a3 <= 44937)
    {
      if (a3 > 44533)
      {
        if (a3 != 44534)
        {
          goto LABEL_321;
        }

        v5 = off_1E73E5AD8;
      }

      else
      {
        v5 = off_1E73E5AD0;
      }

      goto LABEL_320;
    }

    if (a3 <= 44939)
    {
      v5 = off_1E73E57F8;
      goto LABEL_320;
    }

    if (a3 == 44940)
    {
      v5 = off_1E73E5800;
      goto LABEL_320;
    }

    if (a3 != 46121)
    {
      v8 = 46122;
      goto LABEL_217;
    }

LABEL_218:
    v5 = off_1E73E6180;
    goto LABEL_320;
  }

  if (a3 <= 36442)
  {
    if (a3 > 34311)
    {
      if (a3 <= 36437)
      {
        if (a3 <= 36063)
        {
          if (a3 == 34312)
          {
            v5 = off_1E73E5860;
          }

          else
          {
            if (a3 != 36063)
            {
              goto LABEL_321;
            }

            v5 = off_1E73E5878;
          }

          goto LABEL_320;
        }

        if (a3 == 36064)
        {
          v5 = off_1E73E5870;
          goto LABEL_320;
        }

        v6 = 36437;
        goto LABEL_272;
      }

      if (a3 > 36439)
      {
        if (a3 != 36440 && a3 != 36441)
        {
          v6 = 36442;
          goto LABEL_272;
        }

LABEL_273:
        v5 = off_1E73E5A48;
        goto LABEL_320;
      }

      if (a3 == 36438)
      {
        goto LABEL_273;
      }

      v6 = 36439;
LABEL_272:
      if (a3 != v6)
      {
        goto LABEL_321;
      }

      goto LABEL_273;
    }

    if (a3 > 32967)
    {
      if (a3 > 32969)
      {
        if (a3 == 32970)
        {
          v5 = off_1E73E5770;
        }

        else
        {
          if (a3 != 34311)
          {
            goto LABEL_321;
          }

          v5 = off_1E73E5868;
        }
      }

      else
      {
        v5 = off_1E73E5768;
      }

      goto LABEL_320;
    }

    if (a3 > 30601)
    {
      if (a3 != 30602)
      {
        if (a3 != 30603)
        {
          goto LABEL_321;
        }

        v5 = off_1E73E57F0;
        goto LABEL_320;
      }
    }

    else
    {
      if (a3 == 29400)
      {
        v5 = off_1E73E5CA8;
        goto LABEL_320;
      }

      if (a3 != 30601)
      {
        goto LABEL_321;
      }
    }

    v5 = off_1E73E57E8;
    goto LABEL_320;
  }

  if (a3 > 39426)
  {
    if (a3 <= 39430)
    {
      if (a3 > 39428)
      {
        if (a3 == 39429)
        {
          goto LABEL_285;
        }

        v14 = 39430;
      }

      else
      {
        if (a3 == 39427)
        {
          goto LABEL_285;
        }

        v14 = 39428;
      }
    }

    else
    {
      if (a3 > 39432)
      {
        if (a3 != 39433)
        {
          if (a3 != 39434 && a3 != 39435)
          {
            goto LABEL_321;
          }

          v5 = off_1E73E56F0;
          goto LABEL_320;
        }

LABEL_285:
        v5 = off_1E73E56E8;
        goto LABEL_320;
      }

      if (a3 == 39431)
      {
        goto LABEL_285;
      }

      v14 = 39432;
    }

LABEL_284:
    if (a3 != v14)
    {
      goto LABEL_321;
    }

    goto LABEL_285;
  }

  if (a3 > 38253)
  {
    if (a3 <= 38255)
    {
      v5 = off_1E73E5738;
      goto LABEL_320;
    }

    if (a3 == 38256)
    {
      v5 = off_1E73E5740;
      goto LABEL_320;
    }

    v14 = 39426;
    goto LABEL_284;
  }

  if (a3 <= 36444)
  {
    if (a3 == 36443)
    {
      goto LABEL_273;
    }

    v6 = 36444;
    goto LABEL_272;
  }

  if (a3 == 36445 || a3 == 36446)
  {
    v5 = off_1E73E5A50;
    goto LABEL_320;
  }

LABEL_321:

  return v4;
}

+ (Class)itemMessageSubclassForItemType:(unsigned __int16)a3
{
  v4 = 0;
  if (a3 <= 29396)
  {
    if (a3 <= 14024)
    {
      if (a3 > 7821)
      {
        if (a3 > 12009)
        {
          switch(a3)
          {
            case 0x2EEAu:
              v5 = off_1E73E5920;
              break;
            case 0x32C4u:
              v5 = off_1E73E59C8;
              break;
            case 0x363Cu:
              v5 = off_1E73E57D8;
              break;
            default:
              goto LABEL_122;
          }
        }

        else
        {
          switch(a3)
          {
            case 0x1E8Eu:
              v5 = off_1E73E5910;
              break;
            case 0x1F10u:
              v5 = off_1E73E6150;
              break;
            case 0x2002u:
              v5 = off_1E73E5840;
              break;
            default:
              goto LABEL_122;
          }
        }
      }

      else if (a3 > 7555)
      {
        switch(a3)
        {
          case 0x1D84u:
            v5 = off_1E73E5C68;
            break;
          case 0x1E0Au:
            v5 = off_1E73E59E8;
            break;
          case 0x1E27u:
            v5 = off_1E73E5758;
            break;
          default:
            goto LABEL_122;
        }
      }

      else
      {
        switch(a3)
        {
          case 0x320u:
            v5 = off_1E73E56F8;
            break;
          case 0xE1Fu:
            v5 = off_1E73E5850;
            break;
          case 0x15DBu:
            v5 = off_1E73E5788;
            break;
          default:
            goto LABEL_122;
        }
      }
    }

    else if (a3 <= 17033)
    {
      if (a3 > 15571)
      {
        switch(a3)
        {
          case 0x3CD4u:
            v5 = off_1E73E5778;
            break;
          case 0x3D8Du:
            v5 = off_1E73E5B88;
            break;
          case 0x3F7Bu:
            v5 = off_1E73E57B8;
            break;
          default:
            goto LABEL_122;
        }
      }

      else
      {
        switch(a3)
        {
          case 0x36C9u:
            v5 = off_1E73E5830;
            break;
          case 0x3972u:
            v5 = off_1E73E5748;
            break;
          case 0x39E0u:
            v5 = off_1E73E5708;
            break;
          default:
            goto LABEL_122;
        }
      }
    }

    else if (a3 <= 25882)
    {
      switch(a3)
      {
        case 0x428Au:
          v5 = off_1E73E5A18;
          break;
        case 0x486Cu:
          v5 = off_1E73E5A78;
          break;
        case 0x4CD4u:
          v5 = off_1E73E5950;
          break;
        default:
          goto LABEL_122;
      }
    }

    else if (a3 > 27121)
    {
      if (a3 == 27122)
      {
        v5 = off_1E73E59A0;
      }

      else
      {
        if (a3 != 27325)
        {
          goto LABEL_122;
        }

        v5 = off_1E73E5890;
      }
    }

    else if (a3 == 25883)
    {
      v5 = off_1E73E57A8;
    }

    else
    {
      if (a3 != 26512)
      {
        goto LABEL_122;
      }

      v5 = off_1E73E5798;
    }
  }

  else if (a3 > 46119)
  {
    if (a3 <= 54384)
    {
      if (a3 > 53481)
      {
        switch(a3)
        {
          case 0xD0EAu:
            v5 = off_1E73E57C8;
            break;
          case 0xD161u:
            v5 = off_1E73E5BB0;
            break;
          case 0xD16Eu:
            v5 = off_1E73E59B8;
            break;
          default:
            goto LABEL_122;
        }
      }

      else
      {
        switch(a3)
        {
          case 0xB428u:
            v5 = off_1E73E6180;
            break;
          case 0xB8EDu:
            v5 = off_1E73E58F0;
            break;
          case 0xBFAAu:
            v5 = off_1E73E5B50;
            break;
          default:
            goto LABEL_122;
        }
      }
    }

    else if (a3 <= 61351)
    {
      switch(a3)
      {
        case 0xD471u:
          v5 = off_1E73E5940;
          break;
        case 0xDCBEu:
          v5 = off_1E73E5BA0;
          break;
        case 0xE928u:
          v5 = off_1E73E5B20;
          break;
        default:
          goto LABEL_122;
      }
    }

    else if (a3 > 62157)
    {
      if (a3 == 62158)
      {
        v5 = off_1E73E5BC0;
      }

      else
      {
        if (a3 != 63369)
        {
          goto LABEL_122;
        }

        v5 = off_1E73E5718;
      }
    }

    else if (a3 == 61352)
    {
      v5 = off_1E73E5728;
    }

    else
    {
      if (a3 != 61509)
      {
        goto LABEL_122;
      }

      v5 = off_1E73E6140;
    }
  }

  else if (a3 <= 38250)
  {
    if (a3 > 34306)
    {
      switch(a3)
      {
        case 0x8603u:
          v5 = off_1E73E5860;
          break;
        case 0x8CDBu:
          v5 = off_1E73E5870;
          break;
        case 0x8E52u:
          v5 = off_1E73E5A48;
          break;
        default:
          goto LABEL_122;
      }
    }

    else
    {
      switch(a3)
      {
        case 0x72D5u:
          v5 = off_1E73E5CA0;
          break;
        case 0x7786u:
          v5 = off_1E73E57E8;
          break;
        case 0x80C5u:
          v5 = off_1E73E5768;
          break;
        default:
          goto LABEL_122;
      }
    }
  }

  else if (a3 <= 42183)
  {
    switch(a3)
    {
      case 0x956Bu:
        v5 = off_1E73E5738;
        break;
      case 0x9A01u:
        v5 = off_1E73E56E8;
        break;
      case 0x9E78u:
        v5 = off_1E73E5B10;
        break;
      default:
        goto LABEL_122;
    }
  }

  else if (a3 > 44529)
  {
    if (a3 == 44530)
    {
      v5 = off_1E73E5AD0;
    }

    else
    {
      if (a3 != 44935)
      {
        goto LABEL_122;
      }

      v5 = off_1E73E57F8;
    }
  }

  else if (a3 == 42184)
  {
    v5 = off_1E73E5B30;
  }

  else
  {
    if (a3 != 42611)
    {
      goto LABEL_122;
    }

    v5 = off_1E73E5900;
  }

  v6 = *v5;
  v4 = objc_opt_class();
LABEL_122:

  return v4;
}

+ (Class)itemMessageSubclassForIdentifier:(unsigned __int16)a3
{
  v4 = 0;
  if (a3 <= 27121)
  {
    if (a3 <= 14708)
    {
      if (a3 > 7821)
      {
        if (a3 <= 8193)
        {
          switch(a3)
          {
            case 0x1E8Eu:
            case 0x1E91u:
            case 0x1E92u:
            case 0x1E93u:
            case 0x1E94u:
            case 0x1E96u:
              v5 = off_1E73E5910;
              goto LABEL_412;
            case 0x1E95u:
              v5 = off_1E73E5918;
              goto LABEL_412;
            case 0x1F10u:
            case 0x1F11u:
            case 0x1F12u:
            case 0x1F13u:
            case 0x1F14u:
            case 0x1F15u:
            case 0x1F16u:
            case 0x1F17u:
            case 0x1F18u:
            case 0x1F19u:
            case 0x1F1Au:
            case 0x1F1Bu:
            case 0x1F1Cu:
            case 0x1F1Du:
            case 0x1F1Eu:
            case 0x1F1Fu:
            case 0x1F20u:
            case 0x1F21u:
            case 0x1F22u:
            case 0x1F23u:
            case 0x1F24u:
            case 0x1F25u:
            case 0x1F26u:
            case 0x1F27u:
            case 0x1F28u:
            case 0x1F29u:
            case 0x1F2Au:
            case 0x1F2Bu:
            case 0x1F2Cu:
            case 0x1F2Du:
            case 0x1F2Eu:
            case 0x1F2Fu:
            case 0x1F30u:
            case 0x1F31u:
            case 0x1F32u:
            case 0x1F33u:
            case 0x1F34u:
            case 0x1F35u:
            case 0x1F36u:
            case 0x1F37u:
            case 0x1F38u:
            case 0x1F39u:
            case 0x1F3Au:
            case 0x1F3Bu:
            case 0x1F3Cu:
            case 0x1F3Du:
            case 0x1F3Eu:
            case 0x1F3Fu:
            case 0x1F40u:
            case 0x1F41u:
            case 0x1F42u:
            case 0x1F43u:
            case 0x1F44u:
            case 0x1F45u:
            case 0x1F46u:
            case 0x1F47u:
            case 0x1F48u:
            case 0x1F49u:
            case 0x1F4Au:
            case 0x1F4Bu:
            case 0x1F4Cu:
            case 0x1F4Du:
            case 0x1F4Eu:
            case 0x1F4Fu:
            case 0x1F50u:
            case 0x1F51u:
            case 0x1F52u:
            case 0x1F54u:
            case 0x1F55u:
            case 0x1F56u:
            case 0x1F57u:
            case 0x1F58u:
            case 0x1F59u:
            case 0x1F5Au:
            case 0x1F5Bu:
            case 0x1F5Cu:
            case 0x1F5Du:
            case 0x1F5Eu:
            case 0x1F5Fu:
            case 0x1F60u:
            case 0x1F61u:
            case 0x1F62u:
            case 0x1F63u:
            case 0x1F64u:
            case 0x1F65u:
              v5 = off_1E73E6150;
              goto LABEL_412;
            case 0x1F53u:
              v5 = off_1E73E6178;
              goto LABEL_412;
            default:
              goto LABEL_413;
          }

          goto LABEL_413;
        }

        if (a3 > 12998)
        {
          if (a3 > 13887)
          {
            if (a3 <= 14028)
            {
              if (a3 != 13888)
              {
                if (a3 == 13889)
                {
                  v5 = off_1E73E57E0;
                  goto LABEL_412;
                }

                if (a3 != 14025)
                {
                  goto LABEL_413;
                }

LABEL_371:
                v5 = off_1E73E5830;
                goto LABEL_412;
              }

LABEL_214:
              v5 = off_1E73E57D8;
              goto LABEL_412;
            }

            if (a3 == 14029)
            {
              v5 = off_1E73E5838;
              goto LABEL_412;
            }

            if (a3 == 14030)
            {
              goto LABEL_371;
            }

            v19 = 14706;
            goto LABEL_357;
          }

          if (a3 > 13000)
          {
            if (a3 == 13001)
            {
              v5 = off_1E73E59D0;
              goto LABEL_412;
            }

            if (a3 != 13884 && a3 != 13887)
            {
              goto LABEL_413;
            }

            goto LABEL_214;
          }

          if (a3 == 12999)
          {
LABEL_362:
            v5 = off_1E73E59C8;
            goto LABEL_412;
          }

          v18 = 13000;
LABEL_361:
          if (a3 != v18)
          {
            goto LABEL_413;
          }

          goto LABEL_362;
        }

        if (a3 <= 12013)
        {
          if (a3 <= 8198)
          {
            if (a3 != 8194)
            {
              if (a3 != 8198)
              {
                goto LABEL_413;
              }

              v5 = off_1E73E5848;
              goto LABEL_412;
            }
          }

          else if (a3 != 8199)
          {
            if (a3 != 12010)
            {
              v12 = 12013;
              goto LABEL_368;
            }

            goto LABEL_369;
          }

          v5 = off_1E73E5840;
          goto LABEL_412;
        }

        if (a3 <= 12015)
        {
          if (a3 != 12014)
          {
            v12 = 12015;
LABEL_368:
            if (a3 != v12)
            {
              goto LABEL_413;
            }
          }
        }

        else
        {
          if (a3 == 12016)
          {
            v5 = off_1E73E5928;
            goto LABEL_412;
          }

          if (a3 != 12017)
          {
            v18 = 12996;
            goto LABEL_361;
          }
        }

LABEL_369:
        v5 = off_1E73E5920;
        goto LABEL_412;
      }

      if (a3 > 5599)
      {
        switch(a3)
        {
          case 0x1E0Au:
          case 0x1E0Bu:
          case 0x1E0Cu:
          case 0x1E0Du:
          case 0x1E0Eu:
          case 0x1E0Fu:
          case 0x1E10u:
          case 0x1E11u:
          case 0x1E12u:
          case 0x1E15u:
          case 0x1E16u:
          case 0x1E17u:
          case 0x1E18u:
          case 0x1E19u:
          case 0x1E1Au:
          case 0x1E1Bu:
          case 0x1E1Cu:
          case 0x1E1Du:
          case 0x1E1Eu:
            v5 = off_1E73E59E8;
            goto LABEL_412;
          case 0x1E13u:
          case 0x1E14u:
            v5 = off_1E73E59F0;
            goto LABEL_412;
          case 0x1E1Fu:
          case 0x1E20u:
          case 0x1E21u:
          case 0x1E22u:
          case 0x1E23u:
          case 0x1E24u:
          case 0x1E25u:
          case 0x1E26u:
          case 0x1E28u:
          case 0x1E29u:
            goto LABEL_413;
          case 0x1E27u:
          case 0x1E2Au:
          case 0x1E2Bu:
            v5 = off_1E73E5758;
            goto LABEL_412;
          case 0x1E2Cu:
            v5 = off_1E73E5760;
            goto LABEL_412;
          default:
            if (a3 == 5600)
            {
              v5 = off_1E73E5790;
            }

            else
            {
              if (a3 != 7556)
              {
                goto LABEL_413;
              }

              v5 = off_1E73E5C68;
            }

            break;
        }

        goto LABEL_412;
      }

      if (a3 <= 3618)
      {
        if (a3 <= 803)
        {
          if (a3 != 800 && a3 != 803)
          {
            goto LABEL_413;
          }
        }

        else if (a3 != 804)
        {
          if (a3 == 805)
          {
            v5 = off_1E73E5700;
            goto LABEL_412;
          }

          if (a3 != 3615)
          {
            goto LABEL_413;
          }

          goto LABEL_272;
        }

        v5 = off_1E73E56F8;
        goto LABEL_412;
      }

      if (a3 > 5594)
      {
        if (a3 == 5595 || a3 == 5598 || a3 == 5599)
        {
          v5 = off_1E73E5788;
          goto LABEL_412;
        }

        goto LABEL_413;
      }

      if (a3 == 3619)
      {
        v5 = off_1E73E5858;
        goto LABEL_412;
      }

      if (a3 != 3620)
      {
        goto LABEL_413;
      }

LABEL_272:
      v5 = off_1E73E5850;
      goto LABEL_412;
    }

    if (a3 > 19667)
    {
      if (a3 > 25882)
      {
        if (a3 <= 26511)
        {
          if (a3 > 25886)
          {
            if (a3 != 25887)
            {
              if (a3 != 25888)
              {
                goto LABEL_413;
              }

              v5 = off_1E73E57B0;
              goto LABEL_412;
            }
          }

          else if (a3 != 25883 && a3 != 25886)
          {
            goto LABEL_413;
          }

          v5 = off_1E73E57A8;
          goto LABEL_412;
        }

        if (a3 > 26515)
        {
          if (a3 != 26516)
          {
            if (a3 != 26517)
            {
              goto LABEL_413;
            }

            v5 = off_1E73E57A0;
            goto LABEL_412;
          }
        }

        else if (a3 != 26512 && a3 != 26515)
        {
          goto LABEL_413;
        }

        v5 = off_1E73E5798;
        goto LABEL_412;
      }

      switch(a3)
      {
        case 0x4CD4u:
        case 0x4CDFu:
        case 0x4CE0u:
        case 0x4CE1u:
        case 0x4CE2u:
        case 0x4CE3u:
        case 0x4CE4u:
        case 0x4CE5u:
        case 0x4CE6u:
        case 0x4CE7u:
        case 0x4CE8u:
        case 0x4CE9u:
        case 0x4CEAu:
        case 0x4CEBu:
        case 0x4CECu:
        case 0x4CEDu:
        case 0x4CEEu:
        case 0x4CEFu:
        case 0x4CF0u:
        case 0x4CF1u:
        case 0x4CF2u:
        case 0x4CF3u:
        case 0x4CF4u:
        case 0x4CF5u:
        case 0x4CF6u:
        case 0x4CF9u:
        case 0x4D01u:
        case 0x4D16u:
        case 0x4D17u:
        case 0x4D18u:
        case 0x4D19u:
        case 0x4D1Au:
        case 0x4D1Bu:
        case 0x4D1Cu:
        case 0x4D20u:
        case 0x4D21u:
        case 0x4D22u:
        case 0x4D23u:
        case 0x4D24u:
        case 0x4D25u:
        case 0x4D26u:
        case 0x4D27u:
        case 0x4D28u:
        case 0x4D29u:
        case 0x4D2Au:
        case 0x4D2Bu:
        case 0x4D2Cu:
        case 0x4D2Du:
        case 0x4D2Eu:
        case 0x4D2Fu:
        case 0x4D30u:
        case 0x4D31u:
        case 0x4D32u:
        case 0x4D33u:
        case 0x4D34u:
        case 0x4D35u:
        case 0x4D37u:
        case 0x4D39u:
        case 0x4D3Du:
        case 0x4D3Eu:
        case 0x4D3Fu:
        case 0x4D40u:
        case 0x4D41u:
          v5 = off_1E73E5950;
          goto LABEL_412;
        case 0x4CF8u:
          v5 = off_1E73E5970;
          goto LABEL_412;
        default:
          goto LABEL_413;
      }

      goto LABEL_413;
    }

    if (a3 > 16255)
    {
      if (a3 > 17041)
      {
        switch(a3)
        {
          case 0x486Cu:
          case 0x486Du:
          case 0x486Eu:
          case 0x486Fu:
          case 0x4870u:
          case 0x4871u:
          case 0x4872u:
          case 0x4873u:
          case 0x4874u:
          case 0x4875u:
          case 0x4876u:
          case 0x4877u:
          case 0x4878u:
          case 0x487Bu:
          case 0x487Cu:
          case 0x487Du:
          case 0x487Eu:
          case 0x487Fu:
          case 0x4880u:
          case 0x4881u:
          case 0x4882u:
          case 0x4883u:
          case 0x4884u:
          case 0x4885u:
          case 0x4886u:
            v5 = off_1E73E5A78;
            goto LABEL_412;
          case 0x4879u:
          case 0x487Au:
          case 0x4887u:
          case 0x4888u:
            v5 = off_1E73E5A90;
            goto LABEL_412;
          default:
            if (a3 == 17042)
            {
              goto LABEL_266;
            }

            if (a3 != 17043)
            {
              goto LABEL_413;
            }

            v5 = off_1E73E5A28;
            break;
        }

        goto LABEL_412;
      }

      if (a3 <= 17036)
      {
        if (a3 <= 17034)
        {
          if (a3 == 16256)
          {
            v5 = off_1E73E57C0;
            goto LABEL_412;
          }

          v10 = 17034;
          goto LABEL_265;
        }

        if (a3 == 17035)
        {
          goto LABEL_266;
        }

        v10 = 17036;
      }

      else
      {
        if (a3 > 17038)
        {
          if (a3 != 17039 && a3 != 17040)
          {
            v10 = 17041;
            goto LABEL_265;
          }

LABEL_266:
          v5 = off_1E73E5A18;
          goto LABEL_412;
        }

        if (a3 == 17037)
        {
          goto LABEL_266;
        }

        v10 = 17038;
      }

LABEL_265:
      if (a3 != v10)
      {
        goto LABEL_413;
      }

      goto LABEL_266;
    }

    if (a3 > 15756)
    {
      if (a3 > 16250)
      {
        if (a3 == 16251 || a3 == 16254 || a3 == 16255)
        {
          v5 = off_1E73E57B8;
          goto LABEL_412;
        }
      }

      else
      {
        switch(a3)
        {
          case 0x3D8Du:
          case 0x3D93u:
          case 0x3D98u:
          case 0x3D99u:
          case 0x3D9Au:
          case 0x3D9Bu:
          case 0x3D9Cu:
          case 0x3D9Du:
          case 0x3D9Eu:
          case 0x3D9Fu:
          case 0x3DA0u:
          case 0x3DA1u:
          case 0x3DA2u:
          case 0x3DA3u:
          case 0x3DA4u:
          case 0x3DA5u:
          case 0x3DA6u:
          case 0x3DA7u:
          case 0x3DA8u:
          case 0x3DA9u:
          case 0x3DAAu:
          case 0x3DABu:
          case 0x3DACu:
          case 0x3DADu:
            v5 = off_1E73E5B88;
            goto LABEL_412;
          case 0x3D92u:
            v5 = off_1E73E5B90;
            goto LABEL_412;
          default:
            goto LABEL_413;
        }
      }

      goto LABEL_413;
    }

    if (a3 <= 14819)
    {
      if (a3 <= 14710)
      {
        if (a3 == 14709)
        {
LABEL_358:
          v5 = off_1E73E5748;
          goto LABEL_412;
        }

        v19 = 14710;
LABEL_357:
        if (a3 != v19)
        {
          goto LABEL_413;
        }

        goto LABEL_358;
      }

      if (a3 == 14711)
      {
        v5 = off_1E73E5750;
        goto LABEL_412;
      }

      if (a3 != 14816 && a3 != 14819)
      {
        goto LABEL_413;
      }
    }

    else
    {
      if (a3 > 15574)
      {
        if (a3 != 15575 && a3 != 15576)
        {
          if (a3 != 15577)
          {
            goto LABEL_413;
          }

          v5 = off_1E73E5780;
          goto LABEL_412;
        }

        goto LABEL_258;
      }

      if (a3 != 14820)
      {
        if (a3 == 14821)
        {
          v5 = off_1E73E5710;
          goto LABEL_412;
        }

        if (a3 != 15572)
        {
          goto LABEL_413;
        }

LABEL_258:
        v5 = off_1E73E5778;
        goto LABEL_412;
      }
    }

    v5 = off_1E73E5708;
    goto LABEL_412;
  }

  if (a3 <= 30597)
  {
    switch(a3)
    {
      case 0x69F2u:
      case 0x69F6u:
      case 0x69F7u:
      case 0x69FBu:
      case 0x69FCu:
        v5 = off_1E73E59A0;
        goto LABEL_412;
      case 0x69F3u:
      case 0x69F4u:
      case 0x69F5u:
      case 0x69F9u:
      case 0x69FAu:
      case 0x69FDu:
      case 0x69FEu:
      case 0x69FFu:
      case 0x6A00u:
      case 0x6A01u:
      case 0x6A02u:
      case 0x6A03u:
      case 0x6A04u:
      case 0x6A05u:
      case 0x6A06u:
      case 0x6A07u:
      case 0x6A08u:
      case 0x6A09u:
      case 0x6A0Au:
      case 0x6A0Bu:
      case 0x6A0Cu:
      case 0x6A0Du:
      case 0x6A0Eu:
      case 0x6A0Fu:
      case 0x6A10u:
      case 0x6A11u:
      case 0x6A12u:
      case 0x6A13u:
      case 0x6A14u:
      case 0x6A15u:
      case 0x6A16u:
      case 0x6A17u:
      case 0x6A18u:
      case 0x6A19u:
      case 0x6A1Au:
      case 0x6A1Bu:
      case 0x6A1Cu:
      case 0x6A1Du:
      case 0x6A1Eu:
      case 0x6A1Fu:
      case 0x6A20u:
      case 0x6A21u:
      case 0x6A22u:
      case 0x6A23u:
      case 0x6A24u:
      case 0x6A25u:
      case 0x6A26u:
      case 0x6A27u:
      case 0x6A28u:
      case 0x6A29u:
      case 0x6A2Au:
      case 0x6A2Bu:
      case 0x6A2Cu:
      case 0x6A2Du:
      case 0x6A2Eu:
      case 0x6A2Fu:
      case 0x6A30u:
      case 0x6A31u:
      case 0x6A32u:
      case 0x6A33u:
      case 0x6A34u:
      case 0x6A35u:
      case 0x6A36u:
      case 0x6A37u:
      case 0x6A38u:
      case 0x6A39u:
      case 0x6A3Au:
      case 0x6A3Bu:
      case 0x6A3Cu:
      case 0x6A3Du:
      case 0x6A3Eu:
      case 0x6A3Fu:
      case 0x6A40u:
      case 0x6A41u:
      case 0x6A42u:
      case 0x6A43u:
      case 0x6A44u:
      case 0x6A45u:
      case 0x6A46u:
      case 0x6A47u:
      case 0x6A48u:
      case 0x6A49u:
      case 0x6A4Au:
      case 0x6A4Bu:
      case 0x6A4Cu:
      case 0x6A4Du:
      case 0x6A4Eu:
      case 0x6A4Fu:
      case 0x6A50u:
      case 0x6A51u:
      case 0x6A52u:
      case 0x6A53u:
      case 0x6A54u:
      case 0x6A55u:
      case 0x6A56u:
      case 0x6A57u:
      case 0x6A58u:
      case 0x6A59u:
      case 0x6A5Au:
      case 0x6A5Bu:
      case 0x6A5Cu:
      case 0x6A5Du:
      case 0x6A5Eu:
      case 0x6A5Fu:
      case 0x6A60u:
      case 0x6A61u:
      case 0x6A62u:
      case 0x6A63u:
      case 0x6A64u:
      case 0x6A65u:
      case 0x6A66u:
      case 0x6A67u:
      case 0x6A68u:
      case 0x6A69u:
      case 0x6A6Au:
      case 0x6A6Bu:
      case 0x6A6Cu:
      case 0x6A6Du:
      case 0x6A6Eu:
      case 0x6A6Fu:
      case 0x6A70u:
      case 0x6A71u:
      case 0x6A72u:
      case 0x6A73u:
      case 0x6A74u:
      case 0x6A75u:
      case 0x6A76u:
      case 0x6A77u:
      case 0x6A78u:
      case 0x6A79u:
      case 0x6A7Au:
      case 0x6A7Bu:
      case 0x6A7Cu:
      case 0x6A7Du:
      case 0x6A7Eu:
      case 0x6A7Fu:
      case 0x6A80u:
      case 0x6A81u:
      case 0x6A82u:
      case 0x6A83u:
      case 0x6A84u:
      case 0x6A85u:
      case 0x6A86u:
      case 0x6A87u:
      case 0x6A88u:
      case 0x6A89u:
      case 0x6A8Au:
      case 0x6A8Bu:
      case 0x6A8Cu:
      case 0x6A8Du:
      case 0x6A8Eu:
      case 0x6A8Fu:
      case 0x6A90u:
      case 0x6A91u:
      case 0x6A92u:
      case 0x6A93u:
      case 0x6A94u:
      case 0x6A95u:
      case 0x6A96u:
      case 0x6A97u:
      case 0x6A98u:
      case 0x6A99u:
      case 0x6A9Au:
      case 0x6A9Bu:
      case 0x6A9Cu:
      case 0x6A9Du:
      case 0x6A9Eu:
      case 0x6A9Fu:
      case 0x6AA0u:
      case 0x6AA1u:
      case 0x6AA2u:
      case 0x6AA3u:
      case 0x6AA4u:
      case 0x6AA5u:
      case 0x6AA6u:
      case 0x6AA7u:
      case 0x6AA8u:
      case 0x6AA9u:
      case 0x6AAAu:
      case 0x6AABu:
      case 0x6AACu:
      case 0x6AADu:
      case 0x6AAEu:
      case 0x6AAFu:
      case 0x6AB0u:
      case 0x6AB1u:
      case 0x6AB2u:
      case 0x6AB3u:
      case 0x6AB4u:
      case 0x6AB5u:
      case 0x6AB6u:
      case 0x6AB7u:
      case 0x6AB8u:
      case 0x6AB9u:
      case 0x6ABAu:
      case 0x6ABBu:
      case 0x6ABCu:
        goto LABEL_413;
      case 0x69F8u:
        v5 = off_1E73E59A8;
        goto LABEL_412;
      case 0x6ABDu:
      case 0x6ABEu:
      case 0x6ABFu:
      case 0x6AC0u:
      case 0x6AC1u:
      case 0x6AC2u:
      case 0x6AC3u:
      case 0x6AC4u:
      case 0x6AC5u:
      case 0x6AC6u:
      case 0x6AC7u:
      case 0x6AC8u:
      case 0x6AC9u:
      case 0x6ACAu:
      case 0x6ACBu:
      case 0x6ACCu:
      case 0x6ACDu:
      case 0x6ACEu:
      case 0x6ACFu:
      case 0x6AD0u:
      case 0x6AD1u:
      case 0x6AD2u:
      case 0x6AD3u:
      case 0x6AD4u:
      case 0x6AD5u:
      case 0x6AD6u:
      case 0x6AD7u:
      case 0x6AD8u:
      case 0x6AD9u:
      case 0x6ADAu:
      case 0x6ADBu:
      case 0x6ADCu:
      case 0x6ADDu:
      case 0x6ADEu:
      case 0x6ADFu:
      case 0x6AE0u:
      case 0x6AE1u:
      case 0x6AE2u:
      case 0x6AE3u:
      case 0x6AE4u:
      case 0x6AE5u:
      case 0x6AE6u:
      case 0x6AE7u:
      case 0x6AE8u:
      case 0x6AE9u:
      case 0x6AEAu:
      case 0x6AEBu:
      case 0x6AECu:
      case 0x6AEDu:
      case 0x6AEEu:
      case 0x6AEFu:
      case 0x6AF0u:
      case 0x6AF1u:
      case 0x6AF2u:
      case 0x6AF3u:
      case 0x6AF4u:
      case 0x6AF5u:
      case 0x6AF6u:
      case 0x6AF7u:
      case 0x6AF8u:
      case 0x6AF9u:
      case 0x6AFAu:
      case 0x6AFBu:
      case 0x6AFCu:
      case 0x6AFDu:
      case 0x6AFEu:
      case 0x6AFFu:
      case 0x6B00u:
      case 0x6B01u:
      case 0x6B02u:
      case 0x6B03u:
      case 0x6B04u:
      case 0x6B05u:
      case 0x6B06u:
      case 0x6B07u:
      case 0x6B08u:
      case 0x6B09u:
      case 0x6B0Au:
      case 0x6B0Bu:
      case 0x6B0Cu:
      case 0x6B0Du:
      case 0x6B0Eu:
      case 0x6B0Fu:
      case 0x6B10u:
      case 0x6B11u:
      case 0x6B12u:
      case 0x6B13u:
      case 0x6B14u:
      case 0x6B15u:
      case 0x6B16u:
      case 0x6B17u:
      case 0x6B18u:
      case 0x6B19u:
      case 0x6B1Au:
      case 0x6B1Bu:
      case 0x6B1Cu:
      case 0x6B1Du:
      case 0x6B1Eu:
      case 0x6B1Fu:
      case 0x6B20u:
      case 0x6B21u:
      case 0x6B22u:
      case 0x6B23u:
      case 0x6B24u:
      case 0x6B25u:
      case 0x6B26u:
      case 0x6B27u:
      case 0x6B28u:
      case 0x6B29u:
      case 0x6B2Au:
      case 0x6B2Bu:
      case 0x6B2Cu:
      case 0x6B2Du:
      case 0x6B2Eu:
      case 0x6B2Fu:
      case 0x6B30u:
      case 0x6B31u:
      case 0x6B32u:
      case 0x6B33u:
      case 0x6B34u:
      case 0x6B35u:
      case 0x6B36u:
      case 0x6B37u:
      case 0x6B38u:
      case 0x6B39u:
      case 0x6B3Au:
      case 0x6B3Bu:
      case 0x6B3Cu:
      case 0x6B3Du:
      case 0x6B3Eu:
      case 0x6B3Fu:
      case 0x6B40u:
      case 0x6B41u:
      case 0x6B42u:
      case 0x6B43u:
      case 0x6B44u:
      case 0x6B45u:
      case 0x6B46u:
      case 0x6B47u:
      case 0x6B48u:
      case 0x6B49u:
      case 0x6B4Au:
      case 0x6B4Bu:
      case 0x6B4Cu:
      case 0x6B4Du:
      case 0x6B4Eu:
      case 0x6B4Fu:
      case 0x6B50u:
      case 0x6B51u:
      case 0x6B52u:
      case 0x6B53u:
      case 0x6B54u:
      case 0x6B55u:
      case 0x6B56u:
      case 0x6B57u:
      case 0x6B58u:
      case 0x6B59u:
      case 0x6B5Au:
      case 0x6B5Bu:
      case 0x6B5Cu:
      case 0x6B5Du:
      case 0x6B5Eu:
      case 0x6B5Fu:
      case 0x6B60u:
      case 0x6B61u:
      case 0x6B62u:
      case 0x6B63u:
      case 0x6B64u:
      case 0x6B65u:
      case 0x6B66u:
      case 0x6B67u:
      case 0x6B68u:
      case 0x6B69u:
      case 0x6B6Au:
      case 0x6B6Bu:
      case 0x6B6Cu:
      case 0x6B6Du:
      case 0x6B6Eu:
      case 0x6B6Fu:
      case 0x6B70u:
      case 0x6B71u:
      case 0x6B72u:
      case 0x6B73u:
      case 0x6B74u:
      case 0x6B75u:
        v5 = off_1E73E5890;
        goto LABEL_412;
      case 0x6B76u:
        v5 = off_1E73E58B0;
        goto LABEL_412;
      default:
        if ((a3 - 29397) < 3)
        {
          v5 = off_1E73E5CA0;
          goto LABEL_412;
        }

        if (a3 != 29400)
        {
          goto LABEL_413;
        }

        v5 = off_1E73E5CA8;
        break;
    }

    goto LABEL_412;
  }

  if (a3 <= 46119)
  {
    if (a3 > 39433)
    {
      if (a3 > 42611)
      {
        if (a3 <= 42621)
        {
          if (a3 > 42616)
          {
            if (a3 <= 42618)
            {
              if (a3 == 42617)
              {
                goto LABEL_326;
              }

              v6 = 42618;
            }

            else
            {
              if (a3 == 42619 || a3 == 42620)
              {
                goto LABEL_326;
              }

              v6 = 42621;
            }
          }

          else
          {
            if (a3 > 42613)
            {
              if (a3 != 42614)
              {
                if (a3 == 42615)
                {
                  v5 = off_1E73E5908;
                  goto LABEL_412;
                }

                v6 = 42616;
                goto LABEL_325;
              }

LABEL_326:
              v5 = off_1E73E5900;
              goto LABEL_412;
            }

            if (a3 == 42612)
            {
              goto LABEL_326;
            }

            v6 = 42613;
          }

LABEL_325:
          if (a3 != v6)
          {
            goto LABEL_413;
          }

          goto LABEL_326;
        }

        if (a3 > 44533)
        {
          if (a3 <= 44937)
          {
            if (a3 == 44534)
            {
              v5 = off_1E73E5AD8;
              goto LABEL_412;
            }

            if (a3 != 44935)
            {
              goto LABEL_413;
            }
          }

          else if (a3 != 44938 && a3 != 44939)
          {
            if (a3 != 44940)
            {
              goto LABEL_413;
            }

            v5 = off_1E73E5800;
            goto LABEL_412;
          }

          v5 = off_1E73E57F8;
          goto LABEL_412;
        }

        if (a3 <= 44530)
        {
          if (a3 == 42622)
          {
            goto LABEL_326;
          }

          v11 = 44530;
        }

        else
        {
          if (a3 == 44531 || a3 == 44532)
          {
LABEL_322:
            v5 = off_1E73E5AD0;
            goto LABEL_412;
          }

          v11 = 44533;
        }

        if (a3 != v11)
        {
          goto LABEL_413;
        }

        goto LABEL_322;
      }

      if (a3 > 40574)
      {
        if (a3 > 42186)
        {
          if (a3 <= 42188)
          {
            if (a3 == 42187)
            {
              v5 = off_1E73E5B38;
              goto LABEL_412;
            }

            v8 = 42188;
            goto LABEL_336;
          }

          if (a3 != 42189 && a3 != 42190)
          {
            v6 = 42611;
            goto LABEL_325;
          }

LABEL_337:
          v5 = off_1E73E5B30;
          goto LABEL_412;
        }

        if (a3 > 42183)
        {
          if (a3 != 42184 && a3 != 42185)
          {
            v8 = 42186;
LABEL_336:
            if (a3 != v8)
            {
              goto LABEL_413;
            }

            goto LABEL_337;
          }

          goto LABEL_337;
        }

        if (a3 != 40575)
        {
          if (a3 != 40576)
          {
            goto LABEL_413;
          }

          v5 = off_1E73E5B18;
          goto LABEL_412;
        }

LABEL_333:
        v5 = off_1E73E5B10;
        goto LABEL_412;
      }

      if (a3 <= 40569)
      {
        if (a3 <= 40567)
        {
          if (a3 == 39434 || a3 == 39435)
          {
            v5 = off_1E73E56F0;
            goto LABEL_412;
          }

          goto LABEL_413;
        }

        if (a3 == 40568)
        {
          goto LABEL_333;
        }

        v14 = 40569;
      }

      else if (a3 <= 40571)
      {
        if (a3 == 40570)
        {
          goto LABEL_333;
        }

        v14 = 40571;
      }

      else
      {
        if (a3 == 40572 || a3 == 40573)
        {
          goto LABEL_333;
        }

        v14 = 40574;
      }

      if (a3 != v14)
      {
        goto LABEL_413;
      }

      goto LABEL_333;
    }

    if (a3 <= 36440)
    {
      if (a3 <= 34310)
      {
        if (a3 <= 32964)
        {
          if (a3 > 30601)
          {
            if (a3 != 30602)
            {
              if (a3 != 30603)
              {
                goto LABEL_413;
              }

              v5 = off_1E73E57F0;
              goto LABEL_412;
            }
          }

          else if (a3 != 30598 && a3 != 30601)
          {
            goto LABEL_413;
          }

          v5 = off_1E73E57E8;
          goto LABEL_412;
        }

        if (a3 <= 32968)
        {
          if (a3 != 32965 && a3 != 32968)
          {
            goto LABEL_413;
          }
        }

        else if (a3 != 32969)
        {
          if (a3 == 32970)
          {
            v5 = off_1E73E5770;
            goto LABEL_412;
          }

          v13 = 34307;
          goto LABEL_293;
        }

        v5 = off_1E73E5768;
        goto LABEL_412;
      }

      if (a3 <= 36433)
      {
        if (a3 > 36058)
        {
          if (a3 != 36059)
          {
            if (a3 == 36063)
            {
              v5 = off_1E73E5878;
              goto LABEL_412;
            }

            if (a3 != 36064)
            {
              goto LABEL_413;
            }
          }

          v5 = off_1E73E5870;
          goto LABEL_412;
        }

        if (a3 == 34311)
        {
          v5 = off_1E73E5868;
          goto LABEL_412;
        }

        v13 = 34312;
LABEL_293:
        if (a3 != v13)
        {
          goto LABEL_413;
        }

        v5 = off_1E73E5860;
        goto LABEL_412;
      }

      if (a3 > 36437)
      {
        if (a3 != 36438 && a3 != 36439)
        {
          v15 = 36440;
          goto LABEL_299;
        }

LABEL_300:
        v5 = off_1E73E5A48;
        goto LABEL_412;
      }

      if (a3 == 36434)
      {
        goto LABEL_300;
      }

      v15 = 36437;
LABEL_299:
      if (a3 != v15)
      {
        goto LABEL_413;
      }

      goto LABEL_300;
    }

    if (a3 <= 38255)
    {
      if (a3 > 36444)
      {
        if (a3 <= 38250)
        {
          if (a3 == 36445 || a3 == 36446)
          {
            v5 = off_1E73E5A50;
            goto LABEL_412;
          }
        }

        else if (a3 == 38251 || a3 == 38254 || a3 == 38255)
        {
          v5 = off_1E73E5738;
          goto LABEL_412;
        }

        goto LABEL_413;
      }

      if (a3 > 36442)
      {
        if (a3 == 36443)
        {
          goto LABEL_300;
        }

        v15 = 36444;
      }

      else
      {
        if (a3 == 36441)
        {
          goto LABEL_300;
        }

        v15 = 36442;
      }

      goto LABEL_299;
    }

    if (a3 <= 39428)
    {
      if (a3 <= 39425)
      {
        if (a3 == 38256)
        {
          v5 = off_1E73E5740;
          goto LABEL_412;
        }

        v7 = 39425;
        goto LABEL_303;
      }

      if (a3 != 39426 && a3 != 39427)
      {
        v7 = 39428;
        goto LABEL_303;
      }

LABEL_304:
      v5 = off_1E73E56E8;
      goto LABEL_412;
    }

    if (a3 <= 39430)
    {
      if (a3 == 39429)
      {
        goto LABEL_304;
      }

      v7 = 39430;
    }

    else
    {
      if (a3 == 39431 || a3 == 39432)
      {
        goto LABEL_304;
      }

      v7 = 39433;
    }

LABEL_303:
    if (a3 != v7)
    {
      goto LABEL_413;
    }

    goto LABEL_304;
  }

  if (a3 <= 53600)
  {
    if (a3 <= 49065)
    {
      switch(a3)
      {
        case 0xB8EDu:
        case 0xB8EFu:
        case 0xB8F0u:
        case 0xB8F3u:
        case 0xB8F4u:
        case 0xB8F5u:
        case 0xB8F8u:
        case 0xB8F9u:
        case 0xB8FAu:
        case 0xB8FCu:
        case 0xB8FDu:
        case 0xB8FEu:
        case 0xB8FFu:
        case 0xB900u:
        case 0xB901u:
          v5 = off_1E73E58F0;
          goto LABEL_412;
        case 0xB8EEu:
        case 0xB8F2u:
        case 0xB8F6u:
        case 0xB8F7u:
          goto LABEL_413;
        case 0xB8F1u:
        case 0xB8FBu:
          v5 = off_1E73E58F8;
          goto LABEL_412;
        default:
          switch(a3)
          {
            case 0xB428u:
            case 0xB429u:
            case 0xB42Au:
            case 0xB42Cu:
            case 0xB42Du:
            case 0xB42Eu:
            case 0xB42Fu:
            case 0xB430u:
            case 0xB431u:
            case 0xB432u:
            case 0xB433u:
            case 0xB434u:
              v5 = off_1E73E6180;
              goto LABEL_412;
            case 0xB42Bu:
              v5 = off_1E73E6190;
              goto LABEL_412;
            default:
              goto LABEL_413;
          }
      }

      goto LABEL_413;
    }

    if (a3 > 49072)
    {
      if (a3 > 53484)
      {
        if (a3 != 53485 && a3 != 53486)
        {
          if (a3 != 53487)
          {
            goto LABEL_413;
          }

          v5 = off_1E73E57D0;
          goto LABEL_412;
        }

        goto LABEL_154;
      }

      if (a3 != 49073)
      {
        if (a3 == 49074)
        {
          v5 = off_1E73E5B58;
          goto LABEL_412;
        }

        if (a3 != 53482)
        {
          goto LABEL_413;
        }

LABEL_154:
        v5 = off_1E73E57C8;
        goto LABEL_412;
      }

LABEL_166:
      v5 = off_1E73E5B50;
      goto LABEL_412;
    }

    if (a3 <= 49069)
    {
      if (a3 == 49066)
      {
        goto LABEL_166;
      }

      v9 = 49069;
    }

    else
    {
      if (a3 == 49070 || a3 == 49071)
      {
        goto LABEL_166;
      }

      v9 = 49072;
    }

    if (a3 != v9)
    {
      goto LABEL_413;
    }

    goto LABEL_166;
  }

  if (a3 > 59690)
  {
    if (a3 > 62158)
    {
      if (a3 > 62163)
      {
        if (a3 > 63371)
        {
          if (a3 != 63372 && a3 != 63373)
          {
            if (a3 != 63374)
            {
              goto LABEL_413;
            }

            v5 = off_1E73E5720;
            goto LABEL_412;
          }

          goto LABEL_246;
        }

        if (a3 != 62164)
        {
          if (a3 == 62165)
          {
            v5 = off_1E73E5BC8;
            goto LABEL_412;
          }

          if (a3 != 63369)
          {
            goto LABEL_413;
          }

LABEL_246:
          v5 = off_1E73E5718;
          goto LABEL_412;
        }

LABEL_345:
        v5 = off_1E73E5BC0;
        goto LABEL_412;
      }

      if (a3 <= 62160)
      {
        if (a3 == 62159)
        {
          goto LABEL_345;
        }

        v16 = 62160;
      }

      else
      {
        if (a3 == 62161 || a3 == 62162)
        {
          goto LABEL_345;
        }

        v16 = 62163;
      }

LABEL_344:
      if (a3 != v16)
      {
        goto LABEL_413;
      }

      goto LABEL_345;
    }

    if (a3 <= 61508)
    {
      if (a3 <= 61354)
      {
        if (a3 == 59691)
        {
          v5 = off_1E73E5B28;
          goto LABEL_412;
        }

        if (a3 != 61352)
        {
          goto LABEL_413;
        }
      }

      else if (a3 != 61355 && a3 != 61356)
      {
        if (a3 != 61357)
        {
          goto LABEL_413;
        }

        v5 = off_1E73E5730;
        goto LABEL_412;
      }

      v5 = off_1E73E5728;
      goto LABEL_412;
    }

    if (a3 <= 61512)
    {
      if (a3 != 61509 && a3 != 61512)
      {
        goto LABEL_413;
      }
    }

    else if (a3 != 61513)
    {
      if (a3 == 61514)
      {
        v5 = off_1E73E6148;
        goto LABEL_412;
      }

      v16 = 62158;
      goto LABEL_344;
    }

    v5 = off_1E73E6140;
    goto LABEL_412;
  }

  if (a3 > 54389)
  {
    if (a3 > 56513)
    {
      if (a3 <= 59687)
      {
        if (a3 != 56514 && a3 != 56515)
        {
          if (a3 != 56516)
          {
            goto LABEL_413;
          }

          v5 = off_1E73E5BA8;
          goto LABEL_412;
        }

        goto LABEL_341;
      }

      v5 = off_1E73E5B20;
LABEL_412:
      v20 = *v5;
      v4 = objc_opt_class();
      goto LABEL_413;
    }

    if (a3 <= 56510)
    {
      if (a3 == 54390)
      {
        v5 = off_1E73E5948;
        goto LABEL_412;
      }

      v17 = 56510;
    }

    else
    {
      if (a3 == 56511 || a3 == 56512)
      {
LABEL_341:
        v5 = off_1E73E5BA0;
        goto LABEL_412;
      }

      v17 = 56513;
    }

    if (a3 != v17)
    {
      goto LABEL_413;
    }

    goto LABEL_341;
  }

  if (a3 <= 53616)
  {
    if (a3 <= 53604)
    {
      if (a3 != 53601 && a3 != 53604)
      {
        goto LABEL_413;
      }
    }

    else if (a3 != 53605)
    {
      if (a3 == 53606)
      {
        v5 = off_1E73E5BB8;
        goto LABEL_412;
      }

      if (a3 != 53614)
      {
        goto LABEL_413;
      }

LABEL_346:
      v5 = off_1E73E59B8;
      goto LABEL_412;
    }

    v5 = off_1E73E5BB0;
    goto LABEL_412;
  }

  if (a3 <= 54384)
  {
    if (a3 != 53617)
    {
      if (a3 != 53618)
      {
        goto LABEL_413;
      }

      v5 = off_1E73E59C0;
      goto LABEL_412;
    }

    goto LABEL_346;
  }

  if (a3 == 54385 || a3 == 54388 || a3 == 54389)
  {
    v5 = off_1E73E5940;
    goto LABEL_412;
  }

LABEL_413:

  return v4;
}

@end
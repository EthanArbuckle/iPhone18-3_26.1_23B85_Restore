CGImage *LICreateIconForImages(const __CFArray *a1, unsigned int a2, unsigned int a3)
{
  v3 = a3;
  v5 = LICopyBestImageForVariantFromImages(a1, a2, a3);
  v6 = v5;
  v7 = v3 & 0xFFFFFFEF;
  if ((v3 & 4) != 0)
  {
    v3 &= ~0x10u;
  }

  if ((v3 & 0x10) != 0 && v5)
  {
    Width = CGImageGetWidth(v5);
    Height = CGImageGetHeight(v6);
    composedImageBoundsForVariant(a2);
    if (v11 != Height || v10 != Width)
    {
      v3 = v7;
    }
  }

  switch(a2)
  {
    case 0u:
    case 1u:
    case 2u:
    case 3u:
    case 4u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
    case 0xFu:
    case 0x10u:
    case 0x11u:
    case 0x16u:
    case 0x17u:
    case 0x18u:
    case 0x19u:
    case 0x1Eu:
    case 0x1Fu:
    case 0x20u:
    case 0x21u:
    case 0x22u:
    case 0x23u:
    case 0x28u:
    case 0x29u:
    case 0x2Du:
    case 0x2Eu:
    case 0x33u:
    case 0x34u:
    case 0x35u:
    case 0x36u:
    case 0x3Fu:
    case 0x40u:
    case 0x41u:
    case 0x42u:
    case 0x43u:
    case 0x4Fu:
    case 0x50u:
      goto LABEL_11;
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 0x12u:
    case 0x13u:
    case 0x14u:
    case 0x15u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Du:
    case 0x24u:
    case 0x25u:
    case 0x37u:
    case 0x38u:
    case 0x39u:
    case 0x3Au:
    case 0x3Bu:
    case 0x3Cu:
    case 0x3Du:
    case 0x3Eu:
      v18 = outputSizeForVariant(a2);
      v36 = MEMORY[0x277D85DD0];
      v37 = 3221225472;
      v38 = __createDocumentIconFromImage_block_invoke;
      v39 = &__block_descriptor_48_e54_v48__0__CGContext__8_CGRect__CGPoint_dd__CGSize_dd__16l;
      *&v41 = __PAIR64__(v3, a2);
      v40 = v6;
      goto LABEL_32;
    case 0x26u:
    case 0x27u:
    case 0x2Au:
    case 0x2Bu:
    case 0x2Cu:
    case 0x2Fu:
    case 0x30u:
    case 0x31u:
    case 0x32u:
      goto LABEL_24;
    case 0x44u:
    case 0x45u:
    case 0x46u:
    case 0x47u:
    case 0x48u:
    case 0x49u:
    case 0x4Au:
    case 0x4Bu:
    case 0x4Cu:
    case 0x4Du:
    case 0x4Eu:
      v34 = 0.0;
      v35 = 0.0;
      v32 = 0u;
      v33 = 0u;
      v30 = 0;
      v31 = 0;
      v28 = 0;
      v29 = 0;
      if (!frameAndImageNamesForVariant(a2, v3, &v32, &v34, &v31, &v30, &v29, &v28))
      {
        goto LABEL_34;
      }

      v18 = v34;
      v19 = v35;
      v36 = MEMORY[0x277D85DD0];
      v37 = 3221225472;
      v42 = v32;
      v38 = ___createApplicationIconFromImage_block_invoke;
      v39 = &__block_descriptor_112_e54_v48__0__CGContext__8_CGRect__CGPoint_dd__CGSize_dd__16l;
      v46 = a2;
      v47 = v3;
      v40 = v31;
      *&v41 = v29;
      v43 = v33;
      *(&v41 + 1) = v6;
      v44 = v30;
      v45 = v28;
      goto LABEL_32;
    default:
      if (a2 - 0x8000 > 8)
      {
        goto LABEL_34;
      }

      if (((1 << a2) & 0x1D5) == 0)
      {
LABEL_24:
        if (v6)
        {
          if ((v3 & 0x10) != 0)
          {
            v20 = CGImageGetWidth(v6);
            v21 = CGImageGetHeight(v6);
            if (outputSizeForVariant(a2) == v20 && v22 == v21)
            {
              v24 = CGImageRetain(v6);
LABEL_33:
              v25 = v24;
              goto LABEL_40;
            }
          }

          v34 = 0.0;
          v35 = 0.0;
          v32 = 0u;
          v33 = 0u;
          v30 = 0;
          v31 = 0;
          v28 = 0;
          v29 = 0;
          if (frameAndImageNamesForVariant(a2, v3, &v32, &v34, &v31, &v30, &v29, &v28))
          {
            v18 = v34;
            v19 = v35;
            v36 = MEMORY[0x277D85DD0];
            v37 = 3221225472;
            v41 = v32;
            v38 = ___createCircleIconFromImage_block_invoke;
            v39 = &__block_descriptor_76_e54_v48__0__CGContext__8_CGRect__CGPoint_dd__CGSize_dd__16l;
            v40 = v6;
            v42 = v33;
            LODWORD(v43) = v3;
LABEL_32:
            v24 = _createIcon(v6, &v36, v18, v19);
            goto LABEL_33;
          }
        }

        goto LABEL_34;
      }

LABEL_11:
      if (!v6)
      {
LABEL_34:
        v25 = 0;
        goto LABEL_40;
      }

      if ((v3 & 0x10) != 0 && ((v13 = CGImageGetWidth(v6), v14 = CGImageGetHeight(v6), outputSizeForVariant(a2) == v13) ? (v16 = v15 == v14) : (v16 = 0), v16))
      {
        v17 = CGImageRetain(v6);
      }

      else
      {
        v34 = 0.0;
        v35 = 0.0;
        v32 = 0u;
        v33 = 0u;
        v30 = 0;
        v31 = 0;
        v28 = 0;
        v29 = 0;
        if (!frameAndImageNamesForVariant(a2, v3, &v32, &v34, &v31, &v30, &v29, &v28))
        {
          v25 = 0;
          goto LABEL_40;
        }

        v36 = MEMORY[0x277D85DD0];
        v37 = 3221225472;
        v42 = v32;
        v38 = ___createApplicationIconFromImage_block_invoke;
        v39 = &__block_descriptor_112_e54_v48__0__CGContext__8_CGRect__CGPoint_dd__CGSize_dd__16l;
        v46 = a2;
        v47 = v3;
        v40 = v31;
        *&v41 = v29;
        v43 = v33;
        *(&v41 + 1) = v6;
        v44 = v30;
        v45 = v28;
        v17 = _createIcon(v6, &v36, v34, v35);
      }

      v25 = v17;
      if (v17 && (v3 & 1) != 0)
      {
        v26 = LICreateGhostlyVersion(v17);
        CGImageRelease(v25);
        v25 = v26;
      }

LABEL_40:
      CGImageRelease(v6);
      return v25;
  }
}

CGImage *LICreateIconForImage(void *a1, unsigned int a2, unsigned int a3)
{
  values = a1;
  if (!a1)
  {
    syslog(4, "LICreateIconForImage passed NULL CGImageRef image");
    return 0;
  }

  v5 = CFArrayCreate(0, &values, 1, MEMORY[0x277CBF128]);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = LICreateIconForImages(v5, a2, a3);
  CFRelease(v6);
  return v7;
}

void expectedInputSizeForVariant(int a1, char a2)
{
  if ((a2 & 0x10) != 0)
  {
    composedImageBoundsForVariant(a1);
    return;
  }

  scaleForVariant();
  if (a1 >= 0x8000)
  {
    if (a1 <= 32771)
    {
      if ((a1 - 0x8000) < 2 || (a1 - 32770) < 2)
      {
        return;
      }
    }

    else if ((a1 - 32772) < 2 || (a1 - 32774) < 2 || a1 == 32776)
    {
      return;
    }

LABEL_15:
    outputSizeForVariant(a1);
    return;
  }

  switch(a1)
  {
    case 0:
    case 1:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 18:
    case 19:
    case 20:
    case 21:
    case 24:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 32:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 79:
    case 80:
      return;
    default:
      goto LABEL_15;
  }
}

CGImage *LICopyBestImageForVariantFromImages(const __CFArray *a1, unsigned int a2, char a3)
{
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v7 = Count;
      expectedInputSizeForVariant(a2, a3);
      v9 = v8;
      v11 = v10;
      v12 = 0;
      v13 = 0;
      v14 = (a2 > 0x3E) | (0x7FFFFFEFF3F3FF9FuLL >> a2);
      v15 = *MEMORY[0x277CBF3A8];
      v16 = *(MEMORY[0x277CBF3A8] + 8);
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v13);
        Width = CGImageGetWidth(ValueAtIndex);
        Height = CGImageGetHeight(ValueAtIndex);
        CFRetain(ValueAtIndex);
        v20 = v15 >= v9;
        if (v16 < v11)
        {
          v20 = 0;
        }

        v21 = v9 <= Width;
        if (v11 > Height)
        {
          v21 = 0;
        }

        v22 = vabdd_f64(Width, v9) + vabdd_f64(Height, v11);
        v23 = vabdd_f64(v16, v11) + vabdd_f64(v15, v9);
        v24 = v22 < v23;
        if (v14)
        {
          if (v22 < v23 && v20 == v21)
          {
LABEL_17:
            if (v12)
            {
              CFRelease(v12);
            }

            goto LABEL_19;
          }

          v24 = v21 & (v20 ^ 1);
        }

        if (!v12 || v24)
        {
          goto LABEL_17;
        }

        CFRelease(ValueAtIndex);
        Height = v16;
        Width = v15;
        ValueAtIndex = v12;
LABEL_19:
        ++v13;
        v12 = ValueAtIndex;
        v15 = Width;
        v16 = Height;
        if (v7 == v13)
        {
          return ValueAtIndex;
        }
      }
    }
  }

  return 0;
}

uint64_t frameAndImageNamesForVariant(int a1, char a2, uint64_t a3, uint64_t a4, __CFString **a5, __CFString **a6, __CFString **a7, __CFString **a8)
{
  v16 = outputSizeForVariant(a1);
  v18 = v17;
  if (a3)
  {
    v19 = *(MEMORY[0x277CBF3A0] + 16);
    *a3 = *MEMORY[0x277CBF3A0];
    *(a3 + 16) = v19;
  }

  if (a4)
  {
    *a4 = *MEMORY[0x277CBF3A8];
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (a8)
  {
    *a8 = 0;
  }

  if ((a2 & 0x10) != 0)
  {
    v28 = composedImageBoundsForVariant(a1);
    v22 = v33;
    v20 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
  }

  else
  {
    v20 = 0;
    result = 0;
    v22 = 0.0;
    if (a1 > 0x8000)
    {
      if ((a1 - 32771) < 6 || a1 == 32769)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = v18;
        v28 = 0.0;
LABEL_113:
        v27 = v16;
        goto LABEL_114;
      }

      if (a1 != 32770)
      {
        return result;
      }

      v20 = 0;
      v24 = 0;
      v25 = 0;
      v23 = @"NanoIconMaskChiclet-108.0.png";
    }

    else
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = v18;
      v27 = v16;
      v28 = 0.0;
      switch(a1)
      {
        case 0:
        case 1:
        case 15:
        case 24:
        case 32:
          expectedInputSizeForVariant(a1, 0);
          *&v29 = (v16 - v29) * 0.5;
          v28 = floorf(*&v29);
          v22 = *(MEMORY[0x277CBF3A8] + 8) + 0.0;
          expectedInputSizeForVariant(a1, a2);
          v27 = v30;
          v26 = v31;
          v20 = 0;
          v24 = 0;
          v25 = 0;
          v32 = (a2 & 0x20) == 0;
          v23 = @"AppIconMask.png";
          goto LABEL_17;
        case 2:
        case 3:
        case 16:
        case 25:
        case 33:
          v20 = 0;
          v24 = 0;
          v25 = 0;
          v23 = @"SpotlightAppIconMask.png";
          goto LABEL_110;
        case 4:
        case 17:
        case 34:
          v24 = 0;
          v25 = 0;
          if ((a2 & 0x20) != 0)
          {
            v23 = 0;
          }

          else
          {
            v23 = @"TableIconMask.png";
          }

          v20 = @"TableIconOutline.png";
          goto LABEL_112;
        case 5:
        case 6:
        case 7:
        case 8:
        case 11:
        case 18:
        case 19:
        case 20:
        case 21:
        case 26:
        case 27:
        case 28:
        case 29:
        case 36:
        case 37:
        case 55:
        case 56:
        case 57:
        case 58:
        case 59:
        case 60:
        case 61:
        case 62:
        case 67:
          return result;
        case 9:
          v20 = 0;
          if ((a2 & 8) != 0)
          {
            v25 = 0;
          }

          else
          {
            v25 = @"AppFolderBadgeIconShadow-16_1only_.png";
          }

          v24 = @"AppFolderBadgeIconOverlay-16_1only_.png";
          if ((a2 & 2) != 0)
          {
            v24 = 0;
          }

          v23 = @"AppFolderBadgeIconMask-16_1only_.png";
          if ((a2 & 0x20) != 0)
          {
            v23 = 0;
          }

          v22 = 1.0;
          v26 = 14.0;
          v27 = 14.0;
          v28 = 1.0;
          goto LABEL_114;
        case 10:
          v20 = 0;
          if ((a2 & 8) != 0)
          {
            v25 = 0;
          }

          else
          {
            v25 = @"AppFolderBadgeIconShadow-32_1only_.png";
          }

          v24 = @"AppFolderBadgeIconOverlay-32_1only_.png";
          if ((a2 & 2) != 0)
          {
            v24 = 0;
          }

          v23 = @"AppFolderBadgeIconMask-32_1only_.png";
          if ((a2 & 0x20) != 0)
          {
            v23 = 0;
          }

          v22 = 2.0;
          v26 = 15.0;
          v27 = 15.0;
          v28 = 15.0;
          goto LABEL_114;
        case 12:
          v20 = 0;
          if ((a2 & 8) != 0)
          {
            v25 = 0;
          }

          else
          {
            v25 = @"AppFolderBadgeIconShadow-128_1only_.png";
          }

          v24 = @"AppFolderBadgeIconOverlay-128_1only_.png";
          if ((a2 & 2) != 0)
          {
            v24 = 0;
          }

          v28 = 59.0;
          v26 = 61.0;
          v23 = @"AppFolderBadgeIconMask-128_1only_.png";
          if ((a2 & 0x20) != 0)
          {
            v23 = 0;
          }

          v22 = 7.0;
          goto LABEL_93;
        case 13:
          v20 = 0;
          if ((a2 & 8) != 0)
          {
            v25 = 0;
          }

          else
          {
            v25 = @"AppFolderBadgeIconShadow-256_1only_.png";
          }

          v24 = @"AppFolderBadgeIconOverlay-256_1only_.png";
          if ((a2 & 2) != 0)
          {
            v24 = 0;
          }

          v28 = 118.0;
          v26 = 122.0;
          v23 = @"AppFolderBadgeIconMask-256_1only_.png";
          if ((a2 & 0x20) != 0)
          {
            v23 = 0;
          }

          v22 = 13.0;
          goto LABEL_93;
        case 14:
          v20 = 0;
          if ((a2 & 8) != 0)
          {
            v25 = 0;
          }

          else
          {
            v25 = @"AppFolderBadgeIconShadow-512_1only_.png";
          }

          v24 = @"AppFolderBadgeIconOverlay-512_1only_.png";
          if ((a2 & 2) != 0)
          {
            v24 = 0;
          }

          v28 = 237.0;
          v26 = 243.0;
          v23 = @"AppFolderBadgeIconMask-512_1only_.png";
          if ((a2 & 0x20) != 0)
          {
            v23 = 0;
          }

          v22 = 27.0;
LABEL_93:
          v27 = v26;
          goto LABEL_114;
        case 22:
        case 23:
        case 35:
          v20 = 0;
          v24 = 0;
          v25 = 0;
          v23 = @"NotificationAppIconMask.png";
          goto LABEL_110;
        case 30:
          v28 = sideInsetForVariant(30);
          v22 = *(MEMORY[0x277CBF3A8] + 8) + 0.0;
          expectedInputSizeForVariant(30, a2);
          v27 = v38;
          v26 = v39;
          v20 = 0;
          v24 = 0;
          v25 = 0;
          v32 = (a2 & 0x20) == 0;
          v23 = @"CarAppIconMask-120_1only_.png";
          goto LABEL_17;
        case 31:
          v20 = 0;
          v24 = 0;
          v25 = 0;
          v23 = @"CarNotificationAppIconMask-58_1only_.png";
          goto LABEL_110;
        case 38:
        case 39:
        case 42:
        case 43:
        case 44:
        case 47:
        case 48:
        case 49:
        case 50:
          goto LABEL_114;
        case 40:
          v20 = 0;
          v24 = 0;
          v25 = 0;
          v23 = @"NanoIconMaskChiclet-24.0.png";
          goto LABEL_110;
        case 41:
          v20 = 0;
          v24 = 0;
          v25 = 0;
          v23 = @"NanoIconMaskChiclet-27.5.png";
          goto LABEL_110;
        case 45:
          v20 = 0;
          v24 = 0;
          v25 = 0;
          v23 = @"NanoIconMaskChiclet-86.0.png";
          goto LABEL_110;
        case 46:
          v20 = 0;
          v24 = 0;
          v25 = 0;
          v23 = @"NanoIconMaskChiclet-98.0.png";
          goto LABEL_110;
        case 51:
          v20 = 0;
          v24 = 0;
          v25 = 0;
          v23 = @"NanoIconMaskChiclet-40.0.png";
          goto LABEL_110;
        case 52:
          v20 = 0;
          v24 = 0;
          v25 = 0;
          v23 = @"NanoIconMaskChiclet-44.0.png";
          goto LABEL_110;
        case 53:
          v28 = sideInsetForVariant(53);
          v22 = *(MEMORY[0x277CBF3A8] + 8) + 0.0;
          expectedInputSizeForVariant(53, a2);
          v27 = v34;
          v26 = v35;
          v20 = 0;
          v24 = 0;
          v25 = 0;
          v32 = (a2 & 0x20) == 0;
          v23 = @"CarAppIconMask-180_1only_.png";
          goto LABEL_17;
        case 54:
          v20 = 0;
          v24 = 0;
          v25 = 0;
          v23 = @"CarNotificationAppIconMask-87_1only_.png";
LABEL_110:
          if ((a2 & 0x20) != 0)
          {
            v23 = 0;
          }

          goto LABEL_112;
        case 63:
          v28 = sideInsetForVariant(63);
          v22 = *(MEMORY[0x277CBF3A8] + 8) + 0.0;
          expectedInputSizeForVariant(63, a2);
          v27 = v36;
          v26 = v37;
          v20 = 0;
          v24 = 0;
          v25 = 0;
          v32 = (a2 & 0x20) == 0;
          v23 = @"AppIconMask-RFB.png";
LABEL_17:
          if (!v32)
          {
            v23 = 0;
          }

          goto LABEL_114;
        case 64:
        case 65:
        case 66:
          v24 = 0;
          v25 = 0;
          if ((a2 & 0x20) != 0)
          {
            v23 = 0;
          }

          else
          {
            v23 = @"NotificationAppIconMask.png";
          }

          v20 = @"NotificationIconOutline.png";
          goto LABEL_112;
        case 68:
        case 69:
        case 70:
          v24 = 0;
          v25 = 0;
          if ((a2 & 0x20) != 0)
          {
            v23 = 0;
          }

          else
          {
            v23 = @"MessagesLauncherIconMask-60.0.png";
          }

          v20 = @"MessagesLauncherIconOutline-60.0.png";
          goto LABEL_112;
        case 71:
          v24 = 0;
          v25 = 0;
          if ((a2 & 0x20) != 0)
          {
            v23 = 0;
          }

          else
          {
            v23 = @"MessagesLauncherIconMask-67.0.png";
          }

          v20 = @"MessagesLauncherIconOutline-67.0.png";
          goto LABEL_112;
        case 72:
          v24 = 0;
          v25 = 0;
          if ((a2 & 0x20) != 0)
          {
            v23 = 0;
          }

          else
          {
            v23 = @"MessagesLauncherIconMask-74.0.png";
          }

          v20 = @"MessagesLauncherIconOutline-74.0.png";
          goto LABEL_112;
        case 73:
        case 74:
        case 75:
          v24 = 0;
          v25 = 0;
          if ((a2 & 0x20) != 0)
          {
            v23 = 0;
          }

          else
          {
            v23 = @"MessagesBadgeIconMask-32.0.png";
          }

          v20 = @"MessagesBadgeIconOutline-32.0.png";
          goto LABEL_112;
        case 76:
        case 77:
        case 78:
          v24 = 0;
          v25 = 0;
          if ((a2 & 0x20) != 0)
          {
            v23 = 0;
          }

          else
          {
            v23 = @"MessagesStatusIconMask-27.0.png";
          }

          v20 = @"MessagesStatusIconOutline-27.0.png";
          goto LABEL_112;
        case 79:
        case 80:
          v20 = 0;
          v23 = 0;
          v24 = 0;
          v25 = 0;
          v28 = *MEMORY[0x277CBF348];
          v22 = *(MEMORY[0x277CBF348] + 8);
LABEL_112:
          v26 = v18;
          goto LABEL_113;
        default:
          if (a1 != 0x8000)
          {
            return result;
          }

          v20 = 0;
          v24 = 0;
          v25 = 0;
          v23 = @"NanoIconMaskChiclet-50.0.png";
          break;
      }
    }

    if ((a2 & 0x20) != 0)
    {
      v23 = 0;
    }

    v26 = v18;
    v27 = v16;
    v28 = 0.0;
  }

LABEL_114:
  if (a3)
  {
    *a3 = v28;
    *(a3 + 8) = v22;
    *(a3 + 16) = v27;
    *(a3 + 24) = v26;
  }

  if (a4)
  {
    *a4 = v16;
    *(a4 + 8) = v18;
  }

  if (a5)
  {
    *a5 = v25;
  }

  if (a6)
  {
    *a6 = v24;
  }

  if (a7)
  {
    *a7 = v23;
  }

  if (a8)
  {
    *a8 = v20;
  }

  return 1;
}

double outputSizeForVariant(int a1)
{
  if (a1 >= 0x8000)
  {
    if (a1 <= 32771)
    {
      v1 = 100.0;
      if ((a1 - 32770) >= 2)
      {
        v4 = *MEMORY[0x277CBF3A8];
      }

      else
      {
        v4 = 216.0;
      }

      if ((a1 - 0x8000) >= 2)
      {
        v1 = v4;
      }
    }

    else
    {
      v1 = 136.0;
      if (a1 != 32776)
      {
        v1 = *MEMORY[0x277CBF3A8];
      }

      if (a1 == 32775)
      {
        v1 = 120.0;
      }

      v3 = 60.0;
      if (a1 != 32774)
      {
        v3 = *MEMORY[0x277CBF3A8];
      }

      if ((a1 - 32772) < 2)
      {
        v3 = 58.0;
      }

      if (a1 <= 32774)
      {
        v1 = v3;
      }
    }
  }

  else
  {
    v1 = *MEMORY[0x277CBF3A8];
    switch(a1)
    {
      case 0:
      case 35:
      case 66:
        v2 = 0x404E000000000000;
        goto LABEL_65;
      case 1:
        v2 = 0x4053000000000000;
        goto LABEL_65;
      case 2:
      case 3:
      case 23:
      case 65:
        v2 = 0x4044000000000000;
        goto LABEL_65;
      case 4:
        v1 = 29.0;
        return v1 + *MEMORY[0x277CBF3A8] * 2.0;
      case 5:
      case 7:
      case 18:
      case 20:
        v1 = 37.0;
        return v1 + *MEMORY[0x277CBF3A8] * 2.0;
      case 6:
      case 8:
        v1 = 247.0;
        return v1 + *MEMORY[0x277CBF3A8] * 2.0;
      case 9:
        v1 = 16.0;
        return v1 + *MEMORY[0x277CBF3A8] * 2.0;
      case 10:
        v2 = 0x4040000000000000;
        goto LABEL_65;
      case 11:
      case 38:
      case 40:
        v2 = 0x4048000000000000;
        goto LABEL_65;
      case 12:
      case 79:
        v2 = 0x4060000000000000;
        goto LABEL_65;
      case 13:
        v2 = 0x4070000000000000;
        goto LABEL_65;
      case 14:
        v2 = 0x4080000000000000;
        goto LABEL_65;
      case 15:
      case 30:
      case 33:
        v2 = 0x405E000000000000;
        goto LABEL_65;
      case 16:
      case 25:
      case 42:
      case 49:
      case 51:
        v2 = 0x4054000000000000;
        goto LABEL_65;
      case 17:
      case 31:
        v2 = 0x404C000000000000;
        goto LABEL_65;
      case 19:
      case 21:
      case 26:
      case 28:
        v1 = 74.0;
        return v1 + *MEMORY[0x277CBF3A8] * 2.0;
      case 22:
      case 64:
        v1 = 20.0;
        return v1 + *MEMORY[0x277CBF3A8] * 2.0;
      case 24:
        v2 = 0x4063000000000000;
        goto LABEL_65;
      case 27:
      case 29:
        v1 = 493.0;
        return v1 + *MEMORY[0x277CBF3A8] * 2.0;
      case 32:
      case 53:
        v5 = 0x4066800000000000;
        goto LABEL_66;
      case 34:
      case 54:
        v2 = 0x4055000000000000;
        goto LABEL_65;
      case 36:
      case 37:
        v1 = 111.0;
        return v1 + *MEMORY[0x277CBF3A8] * 2.0;
      case 39:
      case 41:
        v5 = 0x404B800000000000;
        goto LABEL_66;
      case 43:
      case 45:
        v5 = 0x4065800000000000;
        goto LABEL_66;
      case 44:
      case 46:
        v5 = 0x4068800000000000;
        goto LABEL_66;
      case 47:
        v2 = 0x404D000000000000;
        goto LABEL_65;
      case 48:
        v5 = 0x4055C00000000000;
        goto LABEL_66;
      case 50:
      case 52:
        v2 = 0x4056000000000000;
        goto LABEL_65;
      case 55:
        v1 = 64.0;
        return v1 + *MEMORY[0x277CBF3A8] * 2.0;
      case 56:
        v1 = 128.0;
        return v1 + *MEMORY[0x277CBF3A8] * 2.0;
      case 57:
        v1 = 192.0;
        return v1 + *MEMORY[0x277CBF3A8] * 2.0;
      case 58:
        v1 = 96.0;
        return v1 + *MEMORY[0x277CBF3A8] * 2.0;
      case 59:
        v1 = 192.0;
        return v1 + *MEMORY[0x277CBF3A8] * 2.0;
      case 60:
        v1 = 34.0;
        return v1 + *MEMORY[0x277CBF3A8] * 2.0;
      case 61:
        v1 = 68.0;
        return v1 + *MEMORY[0x277CBF3A8] * 2.0;
      case 62:
        v1 = 102.0;
        return v1 + *MEMORY[0x277CBF3A8] * 2.0;
      case 63:
        v5 = 0x4064E00000000000;
        goto LABEL_66;
      case 67:
        v1 = 18.0;
        return v1 + *MEMORY[0x277CBF3A8] * 2.0;
      case 68:
        v1 = 60.0;
        return v1 + *MEMORY[0x277CBF3A8] * 2.0;
      case 69:
        v1 = 120.0;
        return v1 + *MEMORY[0x277CBF3A8] * 2.0;
      case 70:
        v1 = 180.0;
        return v1 + *MEMORY[0x277CBF3A8] * 2.0;
      case 71:
        v1 = 134.0;
        return v1 + *MEMORY[0x277CBF3A8] * 2.0;
      case 72:
        v1 = 148.0;
        return v1 + *MEMORY[0x277CBF3A8] * 2.0;
      case 73:
        v1 = 32.0;
        return v1 + *MEMORY[0x277CBF3A8] * 2.0;
      case 74:
        v1 = 64.0;
        return v1 + *MEMORY[0x277CBF3A8] * 2.0;
      case 75:
        v1 = 96.0;
        return v1 + *MEMORY[0x277CBF3A8] * 2.0;
      case 76:
        v1 = 27.0;
        return v1 + *MEMORY[0x277CBF3A8] * 2.0;
      case 77:
        v1 = 54.0;
        return v1 + *MEMORY[0x277CBF3A8] * 2.0;
      case 78:
        v1 = 81.0;
        return v1 + *MEMORY[0x277CBF3A8] * 2.0;
      case 80:
        v2 = 0x4068000000000000;
LABEL_65:
        v5 = v2;
LABEL_66:
        v1 = *&v5;
        break;
      default:
        return v1 + *MEMORY[0x277CBF3A8] * 2.0;
    }
  }

  return v1 + *MEMORY[0x277CBF3A8] * 2.0;
}

CGImageRef _createIcon(CGImage *a1, void *a2, double a3, double a4)
{
  v7 = a2;
  ColorSpace = CGImageGetColorSpace(a1);
  if (ColorSpace && CGColorSpaceIsWideGamutRGB(ColorSpace))
  {
    DeviceRGB = CGColorSpaceCreateWithName(*MEMORY[0x277CBF430]);
    v10 = 4353;
    v11 = 16;
  }

  else
  {
    v10 = 8194;
    v11 = 8;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
  }

  v12 = CGBitmapContextCreate(0, a3, a4, v11, 0, DeviceRGB, v10);
  if (v12)
  {
    v13 = v12;
    CGContextSetInterpolationQuality(v12, kCGInterpolationHigh);
    CGContextSetFillColorSpace(v13, DeviceRGB);
    CGColorSpaceRelease(DeviceRGB);
    v7[2](v7, v13, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), a3, a4);
    Image = CGBitmapContextCreateImage(v13);
    CGContextRelease(v13);
  }

  else
  {
    CGColorSpaceRelease(DeviceRGB);
    Image = 0;
  }

  return Image;
}

void ___createCircleIconFromImage_block_invoke(uint64_t a1, CGContextRef c)
{
  if (*(a1 + 32))
  {
    CGContextSaveGState(c);
    v4 = unskewedCompositingFrameForDestinationFrame(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
    v8 = v4;
    v9 = v5;
    v10 = v6;
    v11 = v7;
    if ((*(a1 + 72) & 0x20) == 0)
    {
      CGContextAddEllipseInRect(c, *&v4);
      CGContextClip(c);
    }

    v13.origin.x = v8;
    v13.origin.y = v9;
    v13.size.width = v10;
    v13.size.height = v11;
    CGContextDrawImage(c, v13, *(a1 + 32));

    CGContextRestoreGState(c);
  }
}

double unskewedCompositingFrameForDestinationFrame(CGImage *a1, double a2, double a3, double a4, double a5)
{
  v8 = a4 / a5;
  Width = CGImageGetWidth(a1);
  v10 = Width / CGImageGetHeight(a1);
  if (v10 > v8)
  {
    return round(a2 + a4 * (v10 / v8 + -1.0) * -0.5);
  }

  return a2;
}

void ___createApplicationIconFromImage_block_invoke(uint64_t a1, CGContext *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v67 = *MEMORY[0x277D85DE8];
  scaleForVariant();
  v13 = v12;
  v14 = *MEMORY[0x277CBF3A8];
  v15 = *(MEMORY[0x277CBF3A8] + 8);
  v16 = *(a1 + 32);
  if (v16)
  {
    CGImageFromFrameworkBundleResourceNamed = createCGImageFromFrameworkBundleResourceNamed(v16, v12);
    if (CGImageFromFrameworkBundleResourceNamed)
    {
      v18 = CGImageFromFrameworkBundleResourceNamed;
      Width = CGImageGetWidth(CGImageFromFrameworkBundleResourceNamed);
      v68.size.height = CGImageGetHeight(v18);
      v68.origin.x = v14;
      v68.origin.y = v15;
      v68.size.width = Width;
      CGContextDrawImage(a2, v68, v18);
      CGImageRelease(v18);
    }
  }

  v20 = *(a1 + 108);
  v21 = v20;
  if ((v20 & 0x20) == 0)
  {
    CGContextSaveGState(a2);
    v22 = *(a1 + 40);
    if (v22)
    {
      v23 = createCGImageFromFrameworkBundleResourceNamed(v22, v13);
      if (v23)
      {
        v24 = v23;
        v25 = CGImageGetWidth(v23);
        v69.size.height = CGImageGetHeight(v24);
        v69.origin.x = v14;
        v69.origin.y = v15;
        v69.size.width = v25;
        CGContextClipToMask(a2, v69, v24);
        CFRelease(v24);
      }

      else
      {
        NSLog(&cfstr_SErrorUnableTo_0.isa, "_createApplicationIconFromImage_block_invoke", *(a1 + 40), *&v13);
      }
    }

    else
    {
      ContinuousRoundedRect = _LICGPathCreateContinuousRoundedRect(a3, a4, a5, a6);
      if (ContinuousRoundedRect)
      {
        v27 = ContinuousRoundedRect;
        CGContextAddPath(a2, ContinuousRoundedRect);
        CFRelease(v27);
        CGContextClip(a2);
      }
    }

    CGContextBeginTransparencyLayer(a2, 0);
    v21 = *(a1 + 108);
  }

  if ((v21 & 0x20008) != 0)
  {
    if ((v21 & 0x40000) != 0 && (CGImageHasAlpha() & 1) == 0)
    {
      v70.origin.x = a3;
      v70.origin.y = a4;
      v70.size.width = a5;
      v70.size.height = a6;
      CGContextClipToMask(a2, v70, *(a1 + 48));
    }
  }

  else
  {
    *components = xmmword_259AB0720;
    v66 = unk_259AB0730;
    CGContextSetFillColor(a2, components);
    v71.origin.x = a3;
    v71.origin.y = a4;
    v71.size.width = a5;
    v71.size.height = a6;
    CGContextFillRect(a2, v71);
  }

  v28 = *(a1 + 48);
  if (v28)
  {
    if ((*(a1 + 108) & 0x14) != 4)
    {
LABEL_30:
      v38 = CGImageRetain(v28);
      goto LABEL_50;
    }

    v29 = *(a1 + 104);
    v30 = CGImageGetWidth(*(a1 + 48));
    Height = CGImageGetHeight(v28);
    v32 = v15;
    v33 = v14;
    if (v29 <= 0x3F)
    {
      if (((1 << v29) & 0x100008001) != 0)
      {
        v34 = 60.0;
        v35 = 59.0;
      }

      else
      {
        v32 = v15;
        v33 = v14;
        if (((1 << v29) & 0x8000000001000002) == 0)
        {
          goto LABEL_25;
        }

        v34 = 76.0;
        v35 = 74.0;
      }

      scaleForVariant();
      v33 = v35 * v36;
      v32 = v34 * v36;
    }

LABEL_25:
    if (v33 != v30 || v32 != Height)
    {
      v28 = *(a1 + 48);
      goto LABEL_30;
    }

    v39 = MEMORY[0x277CBF3A0];
    v40 = 0.0;
    if (v29 > 23)
    {
      if (v29 != 63 && v29 != 24)
      {
LABEL_38:
        v42 = 0.0;
        if (v29 > 0x3F || (v41 = v40, ((1 << v29) & 0x8000000001008003) == 0))
        {
LABEL_41:
          if (v29 > 23)
          {
            if (v29 == 24 || v29 == 63)
            {
              v44 = 6.0;
              goto LABEL_49;
            }
          }

          else
          {
            v44 = 3.0;
            if (v29 < 2)
            {
LABEL_49:
              v45 = *v39 + v42;
              v72.size.width = v33 + v42 * -2.0;
              v72.origin.y = v39[1] + v40;
              v72.size.height = v32 - (v40 + v44);
              v72.origin.x = v45;
              v38 = CGImageCreateWithImageInRect(*(a1 + 48), v72);
LABEL_50:
              v46 = v38;
              v47 = unskewedCompositingFrameForDestinationFrame(v38, *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
              v49 = v48;
              v51 = v50;
              v53 = v52;
              v54 = v50 / CGImageGetWidth(v46);
              if (v54 != 1.0)
              {
                Scaled = _LICGImageCreateScaled(v46, 1, v54);
                if (Scaled)
                {
                  v56 = Scaled;
                  CFAutorelease(v46);
                  v46 = v56;
                }
              }

              v73.origin.x = v47;
              v73.origin.y = v49;
              v73.size.width = v51;
              v73.size.height = v53;
              CGContextDrawImage(a2, v73, v46);
              CGImageRelease(v46);
              goto LABEL_54;
            }

            if (v29 == 15)
            {
              v44 = 5.0;
              goto LABEL_49;
            }
          }

          v44 = 0.0;
          goto LABEL_49;
        }

LABEL_40:
        scaleForVariant();
        v42 = v43;
        v40 = v41;
        goto LABEL_41;
      }
    }

    else if (v29 != 1)
    {
      v41 = 1.0;
      if (v29 == 15)
      {
        goto LABEL_40;
      }

      goto LABEL_38;
    }

    scaleForVariant();
    goto LABEL_38;
  }

LABEL_54:
  v57 = *(a1 + 88);
  if (v57)
  {
    v58 = createCGImageFromFrameworkBundleResourceNamed(v57, v13);
    if (v58)
    {
      v59 = v58;
      v60 = CGImageGetWidth(v58);
      v74.size.height = CGImageGetHeight(v59);
      v74.origin.x = v14;
      v74.origin.y = v15;
      v74.size.width = v60;
      CGContextDrawImage(a2, v74, v59);
      CGImageRelease(v59);
    }

    else
    {
      NSLog(&cfstr_SErrorUnableTo_1.isa, "_createApplicationIconFromImage_block_invoke", *(a1 + 88), *&v13);
    }
  }

  v61 = *(a1 + 96);
  if (!v61 || (*(a1 + 110) & 1) != 0)
  {
LABEL_62:
    if ((v20 & 0x20) != 0)
    {
      return;
    }

    goto LABEL_63;
  }

  v62 = createCGImageFromFrameworkBundleResourceNamed(v61, v13);
  if (v62)
  {
    v63 = v62;
    v64 = CGImageGetWidth(v62);
    v75.size.height = CGImageGetHeight(v63);
    v75.origin.x = v14;
    v75.origin.y = v15;
    v75.size.width = v64;
    CGContextDrawImage(a2, v75, v63);
    CGImageRelease(v63);
    goto LABEL_62;
  }

  NSLog(&cfstr_SErrorUnableTo_2.isa, "_createApplicationIconFromImage_block_invoke", *(a1 + 96), *&v13);
  if ((v20 & 0x20) != 0)
  {
    return;
  }

LABEL_63:
  CGContextEndTransparencyLayer(a2);
  CGContextRestoreGState(a2);
}

CGImageRef createCGImageFromFrameworkBundleResourceNamed(const __CFString *a1, double a2)
{
  v4 = _frameworkBundle();
  v5 = v4;
  CGImageForURL = 0;
  if (!a1 || !v4)
  {
    goto LABEL_19;
  }

  v7 = CFStringFind(a1, @".", 4uLL);
  if (v7.location == -1)
  {
    v10 = CFRetain(a1);
    v9 = CFRetain(&stru_286ABF6D0);
    if (v10)
    {
LABEL_5:
      if (a2 <= 1.0)
      {
        v11 = CFRetain(v10);
      }

      else
      {
        v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@@%ux", v10, a2);
      }

      v12 = v11;
      v13 = [v5 URLForResource:v11 withExtension:v9];
      if (v13)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v16.length = CFStringGetLength(a1) - (v7.location + v7.length);
    v8 = *MEMORY[0x277CBECE8];
    v16.location = v7.location + v7.length;
    v9 = CFStringCreateWithSubstring(*MEMORY[0x277CBECE8], a1, v16);
    v17.location = 0;
    v17.length = v7.location;
    v10 = CFStringCreateWithSubstring(v8, a1, v17);
    if (v10)
    {
      goto LABEL_5;
    }
  }

  v12 = 0;
LABEL_11:
  if (v12 == a1 || ([v5 URLForResource:a1 withExtension:0], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    CGImageForURL = 0;
    if (!v12)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_13:
  v14 = v13;
  CGImageForURL = createCGImageForURL(v13, 1);
  CFRelease(v14);
  if (v12)
  {
LABEL_14:
    CFRelease(v12);
  }

LABEL_15:
  if (v10)
  {
    CFRelease(v10);
  }

  if (v9)
  {
    CFRelease(v9);
  }

LABEL_19:

  return CGImageForURL;
}

id _frameworkBundle()
{
  if (_frameworkBundle_onceToken != -1)
  {
    _frameworkBundle_cold_1();
  }

  v1 = _frameworkBundle_frameworkBundle;

  return v1;
}

CGImageRef createCGImageForURL(const __CFURL *a1, int a2)
{
  valuePtr[3] = *MEMORY[0x277D85DE8];
  error = 0;
  propertyValueTypeRefPtr = 0;
  if (!CFURLCopyResourcePropertyForKey(a1, *MEMORY[0x277CBF160], &propertyValueTypeRefPtr, &error))
  {
    NSLog(&cfstr_ErrorGettingFi.isa, a1, error);
    v5 = error;
    if (!error)
    {
      goto LABEL_7;
    }

LABEL_6:
    CFRelease(v5);
    goto LABEL_7;
  }

  valuePtr[0] = 0;
  if (CFNumberGetValue(propertyValueTypeRefPtr, kCFNumberLongLongType, valuePtr) && valuePtr[0] > 0xA00000)
  {
    return 0;
  }

  v5 = propertyValueTypeRefPtr;
  if (propertyValueTypeRefPtr)
  {
    goto LABEL_6;
  }

LABEL_7:
  v6 = *MEMORY[0x277CBED28];
  v7 = *MEMORY[0x277CBED10];
  valuePtr[0] = *MEMORY[0x277CD3618];
  valuePtr[1] = @"kCGImageSourceSkipCRC";
  if (a2)
  {
    v7 = v6;
  }

  valuePtr[2] = *MEMORY[0x277CD3648];
  values[0] = v7;
  values[1] = v7;
  values[2] = v6;
  v8 = CFDictionaryCreate(0, valuePtr, values, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v9 = CGImageSourceCreateWithURL(a1, v8);
  if (v9)
  {
    v10 = v9;
    if (CGImageSourceGetCount(v9))
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v10, 0, v8);
    }

    else
    {
      ImageAtIndex = 0;
    }

    CFRelease(v10);
  }

  else
  {
    ImageAtIndex = 0;
  }

  CFRelease(v8);
  return ImageAtIndex;
}

double LIIconOutputSizeForVariant(int a1)
{
  v1 = outputSizeForVariant(a1);
  scaleForVariant();
  return v1 / v2;
}

double composedImageBoundsForVariant(int a1)
{
  v1 = outputSizeForVariant(a1);
  v3 = v2;
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  v6 = 0;
  v7 = 0;

  *&result = CGRectInset(*&v6, v4, v5);
  return result;
}

CGImage *LICopyBestImageForVariantFromBundle(__CFBundle *a1, unsigned int a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = copyIconsDictionaryForBundle(a1);
  if (v4)
  {
    v5 = v4;
    Value = CFDictionaryGetValue(v4, @"CFBundlePrimaryIcon");
    if (Value)
    {
      v7 = Value;
      CFRetain(Value);
      Mutable = copyIconFilesForStyleDictionary(v7, 0);
      CFRelease(v7);
      CFRelease(v5);
      if (Mutable)
      {
        goto LABEL_9;
      }
    }

    else
    {
      CFRelease(v5);
    }
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
LABEL_9:
  v10 = _LICopyIconURLsForBundleWithFiles(a1, Mutable, a2, 1);
  v11 = copyImagesForIconURLsFilteringForVariant(v10, 1, a2);
  if (v11)
  {
    v12 = v11;
    InfoDictionary = CFBundleGetInfoDictionary(a1);
    v14 = InfoDictionary;
    if (InfoDictionary)
    {
      v15 = CFDictionaryGetValue(InfoDictionary, @"CFBundleIcons");
      if (v15)
      {
        v16 = v15;
        v17 = CFGetTypeID(v15);
        if (v17 == CFDictionaryGetTypeID())
        {
          if (CFDictionaryContainsKey(v16, @"CFBundlePrimaryIcon"))
          {
            v14 = CFDictionaryGetValue(v16, @"CFBundlePrimaryIcon");
          }

          else
          {
            v14 = v16;
          }
        }
      }
    }

    v18 = iconOptionsForBundleWithStyleDictionary(a1, v14);
    if (_bundleIsAppleInternal(a1))
    {
      _bundleIsRightToLeft(a1);
    }

    v9 = LICopyBestImageForVariantFromImages(v12, a2, v18);
    CFRelease(v12);
    if (!v10)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v9 = 0;
  if (v10)
  {
LABEL_21:
    CFRelease(v10);
  }

LABEL_22:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v9;
}

__CFArray *_LICopyIconURLsForBundleWithFiles(__CFBundle *a1, const __CFArray *a2, unsigned int a3, int a4)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (a1 && (Identifier = CFBundleGetIdentifier(a1)) != 0 && CFEqual(Identifier, @"com.apple.weather") && (v10 = CFLocaleCopyCurrent()) != 0)
  {
    v11 = v10;
    Value = CFLocaleGetValue(v10, *MEMORY[0x277CBEEE0]);
    if (Value)
    {
      if (CFBooleanGetValue(Value))
      {
        v13 = @"Celsius";
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    CFRelease(v11);
  }

  else
  {
    v13 = 0;
  }

  v14 = 57;
  switch(a3)
  {
    case 0u:
    case 0xFu:
    case 0x20u:
      goto LABEL_25;
    case 1u:
    case 7u:
    case 8u:
    case 0x18u:
    case 0x1Cu:
    case 0x1Du:
    case 0x3Fu:
      goto LABEL_11;
    case 2u:
    case 4u:
    case 0x10u:
    case 0x11u:
    case 0x21u:
    case 0x22u:
      v14 = 29;
      goto LABEL_25;
    case 3u:
    case 0x19u:
      v14 = 50;
      goto LABEL_25;
    case 5u:
    case 6u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
    case 0x12u:
    case 0x13u:
    case 0x14u:
    case 0x15u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Eu:
    case 0x1Fu:
    case 0x24u:
    case 0x25u:
    case 0x26u:
    case 0x27u:
    case 0x28u:
    case 0x29u:
    case 0x2Au:
    case 0x2Bu:
    case 0x2Cu:
    case 0x2Du:
    case 0x2Eu:
    case 0x2Fu:
    case 0x30u:
    case 0x31u:
    case 0x32u:
    case 0x33u:
    case 0x34u:
    case 0x35u:
    case 0x36u:
    case 0x37u:
    case 0x38u:
    case 0x39u:
    case 0x3Au:
    case 0x3Bu:
    case 0x3Cu:
    case 0x3Du:
    case 0x3Eu:
    case 0x40u:
    case 0x41u:
    case 0x42u:
    case 0x43u:
      goto LABEL_22;
    case 0x16u:
    case 0x17u:
    case 0x23u:
      v14 = 20;
      goto LABEL_25;
    case 0x44u:
    case 0x45u:
    case 0x46u:
    case 0x4Fu:
    case 0x50u:
      goto LABEL_14;
    case 0x47u:
      v14 = 67;
      goto LABEL_25;
    case 0x48u:
      v14 = 74;
      goto LABEL_25;
    case 0x49u:
    case 0x4Au:
    case 0x4Bu:
      v14 = 32;
      goto LABEL_25;
    case 0x4Cu:
    case 0x4Du:
    case 0x4Eu:
      v14 = 27;
      goto LABEL_25;
    default:
      if (a3 - 32774 >= 2)
      {
        if (a3 == 32776)
        {
LABEL_11:
          v14 = 72;
        }

        else
        {
LABEL_22:
          v14 = 0;
        }
      }

      else
      {
LABEL_14:
        v14 = 60;
      }

LABEL_25:
      scaleForVariant();
      v16 = v15;
      if (a2)
      {
        if (CFArrayGetCount(a2) >= 1)
        {
          gatherURLsForBundleWithFiles(a1, a2, v14, v16, Mutable);
          if (!CFArrayGetCount(Mutable) && v16 == 3)
          {
            gatherURLsForBundleWithFiles(a1, a2, v14, 2, Mutable);
          }
        }
      }

      if (a4)
      {
        if (a3 <= 0x23 && ((1 << a3) & 0xE02C3001CLL) != 0)
        {
          URLForPrefixes = createURLForPrefixes(off_2798E5BE8, a1, v13, v14, v16);
          if (URLForPrefixes)
          {
            v18 = URLForPrefixes;
            CFArrayAppendValue(Mutable, URLForPrefixes);
            CFRelease(v18);
          }
        }

        if (!CFArrayGetCount(Mutable))
        {
          v20 = createURLForPrefixes(off_2798E5C00, a1, v13, v14, v16);
          if (v20)
          {
            v21 = v20;
            v22 = CFBundleCopyBundleURL(a1);
            if (_LIIsURLContainedInDirectory(v21, v22))
            {
              CFArrayAppendValue(Mutable, v21);
            }

            CFRelease(v21);
            if (v22)
            {
              CFRelease(v22);
            }
          }
        }
      }

      return Mutable;
  }
}

CGImage *LICreateDeviceAppropriateHomeScreenIconImageFromBundle(__CFBundle *a1)
{
  v2 = MGGetBoolAnswer();
  v3 = MGGetBoolAnswer();
  v4 = MGGetBoolAnswer();
  v5 = MGGetSInt32Answer();
  v6 = v5;
  if (v3)
  {
    if (v2)
    {
      v7 = 24;
    }

    else
    {
      v7 = 1;
    }

    if (v5 == 14 || v5 == 11 || v5 == 20)
    {
      v10 = 63;
    }

    else
    {
      v10 = v7;
    }
  }

  else
  {
    MGGetFloat32Answer();
    if (v11 == 3.0)
    {
      v10 = 32;
    }

    else if (v6 == 18)
    {
      v10 = 80;
    }

    else if (v6 == 19)
    {
      v10 = 79;
    }

    else if (v2)
    {
      v10 = 15;
    }

    else
    {
      v10 = 0;
    }
  }

  v12 = copyIconsDictionaryForBundle(a1);
  v13 = copyPrimaryIconName(a1, v12);
  if (v13)
  {
    v14 = LICreateIconForBundleAndDisplayGamut(a1, v10, v4);
  }

  else
  {
    v14 = LICopyBestImageForVariantFromBundle(a1, v10);
  }

  v15 = v14;
  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v15;
}

__CFDictionary *copyIconsDictionaryForBundle(__CFBundle *a1)
{
  if (!a1)
  {
    return 0;
  }

  InfoDictionary = CFBundleGetInfoDictionary(a1);
  if (!InfoDictionary)
  {
    return 0;
  }

  v2 = InfoDictionary;
  Value = CFDictionaryGetValue(InfoDictionary, @"CFBundleIcons");
  if (!Value || (v4 = Value, v5 = CFGetTypeID(Value), v5 != CFDictionaryGetTypeID()))
  {
    v7 = CFDictionaryGetValue(v2, @"CFBundleIconFiles");
    if (v7 && (v8 = v7, v9 = CFGetTypeID(v7), v9 == CFArrayGetTypeID()))
    {
      Mutable = CFRetain(v8);
    }

    else
    {
      values = CFDictionaryGetValue(v2, *MEMORY[0x277CBEC48]);
      if (values)
      {
        Mutable = CFArrayCreate(0, &values, 1, MEMORY[0x277CBF128]);
      }

      else
      {
        Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
      }
    }

    v11 = Mutable;
    if (Mutable)
    {
      v12 = MEMORY[0x277CBF138];
      v13 = MEMORY[0x277CBF150];
      v14 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v15 = CFDictionaryCreateMutable(0, 0, v12, v13);
      if (v15)
      {
        v16 = v15;
        CFDictionarySetValue(v14, @"CFBundlePrimaryIcon", v15);
        CFDictionarySetValue(v16, @"CFBundleIconFiles", v11);
        v17 = CFDictionaryGetValue(v2, @"UIPrerenderedIcon");
        if (isPropertyListBooleanTrue(v17))
        {
          CFDictionarySetValue(v16, @"UIPrerenderedIcon", *MEMORY[0x277CBED28]);
        }

        CFRelease(v16);
      }

      CFRelease(v11);
      return v14;
    }

    return 0;
  }

  return CFRetain(v4);
}

CFTypeRef copyPrimaryIconName(uint64_t a1, CFDictionaryRef theDict)
{
  v2 = 0;
  if (a1 && theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"CFBundlePrimaryIcon");
    if (Value)
    {
      v4 = Value;
      CFRetain(Value);
      v5 = CFGetTypeID(v4);
      if (v5 == CFStringGetTypeID())
      {
        v6 = v4;
      }

      else
      {
        if (!CFDictionaryContainsKey(v4, @"CFBundleIconName"))
        {
          v2 = 0;
          goto LABEL_10;
        }

        v6 = CFDictionaryGetValue(v4, @"CFBundleIconName");
      }

      v2 = CFRetain(v6);
LABEL_10:
      CFRelease(v4);
      return v2;
    }

    return 0;
  }

  return v2;
}

CGImage *LICreateIconForBundleAndDisplayGamut(__CFBundle *a1, unsigned int a2, uint64_t a3)
{
  v6 = copyIconsDictionaryForBundle(a1);
  if (v6)
  {
    v7 = v6;
    v8 = copyPrimaryIconName(a1, v6);
    v10 = _bundleIsAppleInternal(a1) ? _bundleIsRightToLeft(a1) << 19 : 0;
    if (v8)
    {
      v11 = _LICreateIconForBundleWithIconNameAndDisplayGamut(a1, v8, a2, a3, v10);
      CFRelease(v8);
    }

    else
    {
      v11 = _LICreateIconForBundleWithIconsDictionaryAndContainers(a1, v7, 0, v9, v10, a2, v10);
    }

    CFRelease(v7);
    if (v11)
    {
      return v11;
    }
  }

  v13 = isAppClipBundle(a1);

  return createDefaultIconWithOptions(a2, 0, v13);
}

CGImage *LICreateIconForBundle(__CFBundle *a1, uint64_t a2, unsigned int a3)
{
  if (_bundleIsAppleInternal(a1))
  {
    v7 = _bundleIsRightToLeft(a1) << 19;
  }

  else
  {
    v7 = 0;
  }

  return _LICreateIconForBundleWithIconsDictionaryAndContainers(a1, 0, 0, v5, v6, a3, v7);
}

uint64_t _bundleIsAppleInternal(__CFBundle *a1)
{
  if (!a1)
  {
    return 0;
  }

  Identifier = CFBundleGetIdentifier(a1);
  if (!Identifier)
  {
    return 0;
  }

  return CFStringHasPrefix(Identifier, @"com.apple.");
}

BOOL _bundleIsRightToLeft(__CFBundle *a1)
{
  v1 = CFBundleCopyBundleLocalizations(a1);
  v2 = CFLocaleCopyPreferredLanguages();
  v3 = v2;
  if (v1 && v2)
  {
    v4 = CFBundleCopyLocalizationsForPreferences(v1, v2);
    if (v4)
    {
      v5 = v4;
      ValueAtIndex = CFArrayGetValueAtIndex(v4, 0);
      if (ValueAtIndex)
      {
        v7 = CFLocaleGetLanguageCharacterDirection(ValueAtIndex) == kCFLocaleLanguageDirectionRightToLeft;
      }

      else
      {
        v7 = 0;
      }

      CFRelease(v5);
    }

    else
    {
      v7 = 0;
    }

LABEL_13:
    CFRelease(v1);
    v8 = v7;
    if (!v3)
    {
      return v8;
    }

    goto LABEL_8;
  }

  v7 = 0;
  v8 = 0;
  if (v1)
  {
    goto LABEL_13;
  }

  if (v2)
  {
LABEL_8:
    CFRelease(v3);
  }

  return v8;
}

CGImage *_LICreateIconForBundleWithIconsDictionaryAndContainers(__CFBundle *a1, __CFDictionary *cf, const __CFString *a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7)
{
  if (cf)
  {
    v11 = cf;
    CFRetain(cf);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_11:
    v12 = 1;
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_12:
    v17 = 0;
    goto LABEL_28;
  }

  v11 = copyIconsDictionaryForBundle(a1);
  if (!a3)
  {
    goto LABEL_11;
  }

LABEL_3:
  v12 = CFStringCompare(@"CFBundlePrimaryIcon", a3, 0) == kCFCompareEqualTo;
  if (!v11)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (!a3 || v12)
  {
    v16 = @"CFBundlePrimaryIcon";
    v15 = v11;
  }

  else
  {
    if (!CFDictionaryContainsKey(v11, @"CFBundleAlternateIcons"))
    {
      goto LABEL_18;
    }

    Value = CFDictionaryGetValue(v11, @"CFBundleAlternateIcons");
    if (!Value)
    {
      goto LABEL_18;
    }

    v14 = Value;
    if (!CFDictionaryContainsKey(Value, a3))
    {
      goto LABEL_18;
    }

    v15 = v14;
    v16 = a3;
  }

  v18 = CFDictionaryGetValue(v15, v16);
  v19 = v18;
  if (v18)
  {
    CFRetain(v18);
    a7 |= iconOptionsForBundleWithStyleDictionary(a1, v19);
    if (a1)
    {
      v20 = copyIconFilesForStyleDictionary(v19, a7);
      v21 = _LICopyIconURLsForBundleWithFiles(a1, v20, a6, v12);
      if (v20)
      {
        CFRelease(v20);
      }
    }

    else
    {
      v21 = 0;
    }

    CFRelease(v19);
    if (v21)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

LABEL_18:
  if (a1)
  {
    v21 = _LICopyIconURLsForBundleWithFiles(a1, 0, a6, 1);
    if (v21)
    {
LABEL_23:
      v22 = copyImagesForIconURLsFilteringForVariant(v21, 1, a6);
      if (v22)
      {
        v23 = v22;
        v17 = LICreateIconForImages(v22, a6, a7);
        CFRelease(v23);
      }

      else
      {
        v17 = 0;
      }

      CFRelease(v21);
      goto LABEL_27;
    }
  }

LABEL_20:
  v17 = 0;
LABEL_27:
  CFRelease(v11);
LABEL_28:
  v24 = !v12;
  if (v17)
  {
    v24 = 1;
  }

  if (v24)
  {
    return v17;
  }

  v25 = isAppClipBundle(a1);

  return createDefaultIconWithOptions(a6, a7, v25);
}

unint64_t iconOptionsForBundleWithStyleDictionary(CFBundleRef bundle, const __CFDictionary *cf)
{
  v2 = cf;
  v19 = *MEMORY[0x277D85DE8];
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 != CFDictionaryGetTypeID())
    {
      v2 = 0;
      if (!bundle)
      {
        return v2;
      }

      goto LABEL_9;
    }

    Value = CFDictionaryGetValue(v2, @"UIPrerenderedIcon");
    v6 = isPropertyListBooleanTrue(Value) != 0;
    v7 = CFDictionaryGetValue(v2, @"UIPrecomposedIcon");
    if (isPropertyListBooleanTrue(v7))
    {
      v2 = (2 * v6) | 0x10u;
    }

    else
    {
      v2 = (2 * v6);
    }
  }

  if (!bundle)
  {
    return v2;
  }

LABEL_9:
  v8 = CFBundleCopyBundleURL(bundle);
  if (v8)
  {
    v9 = v8;
    v10 = CFURLCopyAbsoluteURL(v8);
    v11 = CFURLCopyFileSystemPath(v10, kCFURLPOSIXPathStyle);
    CFRelease(v10);
    if (v11)
    {
      if (CFStringGetCString(v11, buffer, 1026, 0x8000100u))
      {
        memset(&v16, 0, sizeof(v16));
        if (!lstat(buffer, &v16) && (v16.st_mode & 0xF000) == 0xA000)
        {
          bzero(v17, 0x402uLL);
          if (readlink(buffer, v17, 0x402uLL) >= 1)
          {
            v12 = CFStringCreateWithFileSystemRepresentation(0, v17);
            if (v12)
            {
              v13 = v12;
              CFRelease(v11);
              v11 = v13;
            }
          }
        }
      }

      if (isFilePathContainedInPath(v11, @"Applications"))
      {
        CFRelease(v11);
LABEL_20:
        v2 = v2 | 4;
LABEL_22:
        CFRelease(v9);
        return v2;
      }

      v14 = isFilePathContainedInPath(v11, @"System");
      CFRelease(v11);
      if (v14)
      {
        goto LABEL_20;
      }
    }

    v2 &= 0xBu;
    goto LABEL_22;
  }

  return v2;
}

CFMutableArrayRef copyIconFilesForStyleDictionary(const void *a1, int a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 != CFDictionaryGetTypeID() || ((a2 & 0x80000) == 0 || (Value = CFDictionaryGetValue(a1, @"CFBundleIconFilesRightToLeft")) == 0) && (Value = CFDictionaryGetValue(a1, @"CFBundleIconFiles")) == 0 || (v6 = Value, v7 = CFGetTypeID(Value), v7 != CFArrayGetTypeID()) || (result = CFRetain(v6)) == 0)
  {
    v9 = MEMORY[0x277CBF128];

    return CFArrayCreateMutable(0, 0, v9);
  }

  return result;
}

CGImage *createDefaultIconWithOptions(unsigned int a1, unsigned int a2, int a3)
{
  if (a3)
  {
    v5 = _copyAppClipDefaultIconImages();
    if (!v5)
    {
LABEL_17:
      v6 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    switch(a1)
    {
      case 0u:
      case 1u:
      case 2u:
      case 3u:
      case 4u:
      case 0xFu:
      case 0x10u:
      case 0x11u:
      case 0x16u:
      case 0x17u:
      case 0x18u:
      case 0x19u:
      case 0x1Eu:
      case 0x1Fu:
      case 0x20u:
      case 0x21u:
      case 0x22u:
      case 0x23u:
      case 0x28u:
      case 0x29u:
      case 0x2Du:
      case 0x2Eu:
      case 0x33u:
      case 0x34u:
      case 0x35u:
      case 0x36u:
      case 0x3Fu:
      case 0x40u:
      case 0x41u:
      case 0x42u:
      case 0x43u:
      case 0x4Fu:
      case 0x50u:
        goto LABEL_5;
      case 5u:
      case 6u:
      case 7u:
      case 8u:
      case 0x12u:
      case 0x13u:
      case 0x14u:
      case 0x15u:
      case 0x1Au:
      case 0x1Bu:
      case 0x1Cu:
      case 0x1Du:
      case 0x24u:
      case 0x25u:
      case 0x37u:
      case 0x38u:
      case 0x39u:
      case 0x3Au:
      case 0x3Bu:
      case 0x3Cu:
      case 0x3Du:
      case 0x3Eu:
        v6 = LICreateIconForImages(0, a1, a2);
        goto LABEL_18;
      case 9u:
      case 0xAu:
      case 0xBu:
      case 0xCu:
      case 0xDu:
      case 0xEu:
        v5 = _copyDefaultIconImages();
        if (!v5)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      case 0x26u:
      case 0x27u:
      case 0x2Au:
      case 0x2Bu:
      case 0x2Cu:
      case 0x2Fu:
      case 0x30u:
      case 0x31u:
      case 0x32u:
        goto LABEL_12;
      case 0x44u:
      case 0x45u:
      case 0x46u:
      case 0x47u:
      case 0x48u:
      case 0x49u:
      case 0x4Au:
      case 0x4Bu:
      case 0x4Cu:
      case 0x4Du:
      case 0x4Eu:
        v5 = _copyMessagesDefaultIconImages();
        if (!v5)
        {
          goto LABEL_17;
        }

LABEL_16:
        v7 = v5;
        v9 = a2 | 2;
        v8 = a1;
        goto LABEL_14;
      default:
        if (a1 - 0x8000 > 8)
        {
          goto LABEL_17;
        }

        if (((1 << a1) & 0x1D5) != 0)
        {
LABEL_5:
          v5 = _copyDefaultIconImages();
          if (v5)
          {
            break;
          }

          goto LABEL_17;
        }

LABEL_12:
        v5 = _copyNanoDefaultIconImages();
        if (!v5)
        {
          goto LABEL_17;
        }

        break;
    }
  }

  v7 = v5;
  v8 = a1;
  v9 = a2;
LABEL_14:
  v6 = LICreateIconForImages(v5, v8, v9);
  CFRelease(v7);
LABEL_18:
  CGImageSetProperty();
  return v6;
}

BOOL isAppClipBundle(__CFBundle *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = CFBundleGetIdentifier(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v1 allowPlaceholder:1 error:0];
  v4 = [v3 appClipMetadata];
  v5 = v4 != 0;

  return v5;
}

CGImageRef LICreateIconFromCachedBitmap(const __CFData *a1)
{
  result = [MEMORY[0x277D1B160] createCGImageWithBitmapData:a1];
  if (!result)
  {

    return LICreateImageFromUncompressedBitmapData(a1);
  }

  return result;
}

CGImage *_LICreateIconForBundleWithIconNameAndDisplayGamut(CFBundleRef bundle, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5)
{
  if (!bundle)
  {
    goto LABEL_28;
  }

  v10 = CFBundleCopyResourceURL(bundle, @"Assets", @"car", 0);
  if (!v10)
  {
    goto LABEL_28;
  }

  v11 = v10;
  v30 = 0;
  v12 = [objc_alloc(MEMORY[0x277D02670]) initWithURL:v10 error:&v30];
  v13 = 0;
  if (v12)
  {
    v14 = v30 == 0;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    if ((a5 & 0x80000) != 0)
    {
      v15 = 4;
    }

    else
    {
      v15 = 5;
    }

    scaleForVariant();
    v17 = v16;
    v18 = 1;
    switch(a3)
    {
      case 0x11u:
      case 0x17u:
      case 0x38u:
      case 0x3Bu:
      case 0x3Du:
      case 0x41u:
      case 0x4Fu:
        if (MGGetBoolAnswer())
        {
          v18 = 2;
        }

        else
        {
          v18 = 1;
        }

        goto LABEL_20;
      case 0x12u:
      case 0x13u:
      case 0x14u:
      case 0x15u:
      case 0x16u:
      case 0x20u:
      case 0x21u:
      case 0x22u:
      case 0x23u:
      case 0x24u:
      case 0x25u:
      case 0x37u:
      case 0x39u:
      case 0x3Au:
      case 0x3Cu:
      case 0x3Eu:
      case 0x40u:
      case 0x42u:
      case 0x43u:
      case 0x44u:
      case 0x45u:
      case 0x46u:
      case 0x49u:
      case 0x4Au:
      case 0x4Bu:
      case 0x4Cu:
      case 0x4Du:
      case 0x4Eu:
        goto LABEL_20;
      case 0x18u:
      case 0x19u:
      case 0x1Au:
      case 0x1Bu:
      case 0x1Cu:
      case 0x1Du:
      case 0x3Fu:
      case 0x47u:
      case 0x48u:
        goto LABEL_19;
      case 0x1Eu:
      case 0x1Fu:
      case 0x35u:
      case 0x36u:
        v18 = 4;
        goto LABEL_20;
      case 0x26u:
      case 0x27u:
      case 0x28u:
      case 0x29u:
      case 0x2Au:
      case 0x2Bu:
      case 0x2Cu:
      case 0x2Du:
      case 0x2Eu:
      case 0x2Fu:
      case 0x30u:
      case 0x31u:
      case 0x32u:
      case 0x33u:
      case 0x34u:
        goto LABEL_16;
      default:
        if (a3 - 0x8000 >= 6)
        {
          if (a3 - 32774 < 3)
          {
LABEL_19:
            v18 = 2;
          }
        }

        else
        {
LABEL_16:
          v18 = 5;
        }

LABEL_20:
        if (cuiDeviceSubtypeForVariant_onceToken != -1)
        {
          _LICreateIconForBundleWithIconNameAndDisplayGamut_cold_1();
        }

        v19 = cuiDeviceSubtypeForVariant_subtype;
        expectedInputSizeForVariant(a3, a5);
        v27 = v21;
        v28 = v20;
        CGAffineTransformMakeScale(&v29, 1.0 / v17, 1.0 / v17);
        v22 = [v12 _LI_iconImageWithName:a2 size:v18 scale:v19 idiom:a4 subtype:v15 gamut:vmlaq_n_f64(vmulq_n_f64(*&v29.c layoutDirection:{v27), *&v29.a, v28), v17}];
        v23 = v22;
        if (v22 && (*&v29.a = [v22 image]) != 0)
        {
          v24 = CFArrayCreate(*MEMORY[0x277CBECE8], &v29, 1, MEMORY[0x277CBF128]);
          v13 = LICreateIconForImages(v24, a3, a5);
          CFRelease(v24);
        }

        else
        {
          v13 = 0;
        }

        break;
    }
  }

  CFRelease(v11);
  if (!v13)
  {
LABEL_28:
    v25 = isAppClipBundle(bundle);
    return createDefaultIconWithOptions(a3, a5, v25);
  }

  return v13;
}

__CFArray *copyImagesForIconURLsFilteringForVariant(void *a1, uint64_t a2, int a3)
{
  v42 = *MEMORY[0x277D85DE8];
  expectedInputSizeForVariant(a3, 0);
  if (!a1)
  {
    return 0;
  }

  v7 = v5;
  v8 = v6;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = a1;
  v10 = [v9 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    Mutable = 0;
    v13 = *v37;
    do
    {
      v14 = 0;
      v35 = v11;
      do
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v36 + 1) + 8 * v14);
        CGImageForURL = createCGImageForURL(v15, 0);
        if (CGImageForURL)
        {
          v17 = CGImageForURL;
          if (a2)
          {
            Width = CGImageGetWidth(CGImageForURL);
            Height = CGImageGetHeight(v17);
            v20 = v7 < Width && v8 < Height;
            if (!v20 || (v21 = v13, v22 = Mutable, v23 = a2, v24 = v9, v25 = objc_autoreleasePoolPush(), -[__CFURL absoluteString](v15, "absoluteString"), v26 = objc_claimAutoreleasedReturnValue(), [v26 lastPathComponent], v27 = objc_claimAutoreleasedReturnValue(), v26, LOBYTE(v26) = objc_msgSend(v27, "hasPrefix:", @"Default"), v27, v28 = v25, v9 = v24, a2 = v23, Mutable = v22, v13 = v21, v11 = v35, objc_autoreleasePoolPop(v28), (v26 & 1) == 0))
            {
              v29 = 0;
              v41[0] = xmmword_259AB06B0;
              v41[1] = xmmword_259AB06C0;
              v41[2] = xmmword_259AB06D0;
              v41[3] = xmmword_259AB06E0;
              v41[4] = xmmword_259AB06F0;
              v41[5] = xmmword_259AB0700;
              v41[6] = xmmword_259AB0710;
              while (1)
              {
                v30 = *&v41[v29];
                v31 = *(&v41[v29] + 1);
                if (v30 == Width && v31 == Height)
                {
                  break;
                }

                if (v31 == Width && v30 == Height)
                {
                  break;
                }

                if (++v29 == 7)
                {
                  goto LABEL_25;
                }
              }
            }
          }

          else
          {
LABEL_25:
            if (!Mutable)
            {
              Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
            }

            CFArrayAppendValue(Mutable, v17);
          }

          CGImageRelease(v17);
        }

        ++v14;
      }

      while (v14 != v11);
      v11 = [v9 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v11);
  }

  else
  {
    Mutable = 0;
  }

  return Mutable;
}

void gatherURLsForBundleWithFiles(__CFBundle *a1, const __CFArray *a2, uint64_t a3, uint64_t a4, __CFArray *a5)
{
  if (a5)
  {
    v10 = CFBundleCopyBundleURL(a1);
    Count = CFArrayGetCount(a2);
    if (Count >= 1)
    {
      v12 = Count;
      for (i = 0; i != v12; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
        if (ValueAtIndex)
        {
          v15 = ValueAtIndex;
          v16 = CFGetTypeID(ValueAtIndex);
          if (v16 == CFStringGetTypeID() && CFStringGetLength(v15) >= 1)
          {
            URLForFormatInBundle = createURLForFormatInBundle(a1, @"%@", v15, 0);
            if (URLForFormatInBundle || (URLForFormatInBundle = createURLForImageInBundleWithSizeIfExists(a1, v15, @"png", a3, a4)) != 0)
            {
              v18 = URLForFormatInBundle;
              if (_LIIsURLContainedInDirectory(URLForFormatInBundle, v10))
              {
                CFArrayAppendValue(a5, v18);
              }

              CFRelease(v18);
            }
          }
        }
      }
    }

    if (v10)
    {

      CFRelease(v10);
    }
  }
}

const __CFURL *createURLForPrefixes(uint64_t *a1, __CFBundle *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v10 = a1 + 1;
  do
  {
    if (a3)
    {
      v11 = CFStringCreateWithFormat(0, 0, @"%@-%@", v6, a3);
      URLForImageInBundleWithSizeIfExists = createURLForImageInBundleWithSizeIfExists(a2, v11, @"png", a4, a5);
      CFRelease(v11);
      if (URLForImageInBundleWithSizeIfExists)
      {
        return URLForImageInBundleWithSizeIfExists;
      }

      v6 = *(v10 - 1);
    }

    v13 = createURLForImageInBundleWithSizeIfExists(a2, v6, @"png", a4, a5);
    v14 = *v10++;
    v6 = v14;
    if (v14)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 0;
    }
  }

  while (v15);
  return v13;
}

uint64_t _LIIsURLContainedInDirectory(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  if (!a2)
  {
    return 0;
  }

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 getRelationship:&v8 ofDirectoryAtURL:a2 toItemAtURL:a1 error:0];
  if (v8)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

uint64_t _copyDefaultIconURLs(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = _frameworkBundle();
  v4 = [v3 URLsForResourcesWithExtension:@"png" subdirectory:0];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 absoluteString];
        v12 = [v11 lastPathComponent];

        if ([v12 hasPrefix:v1])
        {
          [v2 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v2 copy];
  return v13;
}

__CFArray *_copyDefaultIconImages()
{
  if (_copyDefaultIconImages_onceToken != -1)
  {
    _copyDefaultIconImages_cold_1();
  }

  v1 = _copyDefaultIconImages___DefaultImageURLs;

  return copyImagesForIconURLsFilteringForVariant(v1, 0, -1);
}

uint64_t ___copyDefaultIconImages_block_invoke()
{
  result = _copyDefaultIconURLs(@"DefaultIcon");
  _copyDefaultIconImages___DefaultImageURLs = result;
  return result;
}

__CFArray *_copyNanoDefaultIconImages()
{
  if (_copyNanoDefaultIconImages_onceToken != -1)
  {
    _copyNanoDefaultIconImages_cold_1();
  }

  v1 = _copyNanoDefaultIconImages___DefaultImageURLs;

  return copyImagesForIconURLsFilteringForVariant(v1, 0, -1);
}

uint64_t ___copyNanoDefaultIconImages_block_invoke()
{
  result = _copyDefaultIconURLs(@"NanoDefaultIcon");
  _copyNanoDefaultIconImages___DefaultImageURLs = result;
  return result;
}

__CFArray *_copyMessagesDefaultIconImages()
{
  if (_copyMessagesDefaultIconImages_onceToken != -1)
  {
    _copyMessagesDefaultIconImages_cold_1();
  }

  v1 = _copyMessagesDefaultIconImages___DefaultImageURLs;

  return copyImagesForIconURLsFilteringForVariant(v1, 0, -1);
}

uint64_t ___copyMessagesDefaultIconImages_block_invoke()
{
  result = _copyDefaultIconURLs(@"MessagesDefaultIcon");
  _copyMessagesDefaultIconImages___DefaultImageURLs = result;
  return result;
}

__CFArray *_copyAppClipDefaultIconImages()
{
  if (_copyAppClipDefaultIconImages_onceToken != -1)
  {
    _copyAppClipDefaultIconImages_cold_1();
  }

  v1 = _copyAppClipDefaultIconImages___DefaultImageURLs;

  return copyImagesForIconURLsFilteringForVariant(v1, 0, -1);
}

uint64_t ___copyAppClipDefaultIconImages_block_invoke()
{
  result = _copyDefaultIconURLs(@"AppClipDefaultIcon");
  _copyAppClipDefaultIconImages___DefaultImageURLs = result;
  return result;
}

CGImageRef LICreateIconOverlay(int a1)
{
  v7 = 0.0;
  v8 = 0.0;
  v6 = 0;
  v2 = *(MEMORY[0x277CBF3A0] + 16);
  v4 = *MEMORY[0x277CBF3A0];
  v5 = v2;
  frameAndImageNamesForVariant(a1, 0, &v4, &v7, 0, 0, &v6, 0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v10 = v4;
  v9[2] = ___createApplicationIconFromImage_block_invoke;
  v9[3] = &__block_descriptor_112_e54_v48__0__CGContext__8_CGRect__CGPoint_dd__CGSize_dd__16l;
  v14 = a1;
  v15 = 0;
  v9[4] = 0;
  v9[5] = v6;
  v9[6] = 0;
  v11 = v5;
  v12 = 0;
  v13 = 0;
  return _createIcon(0, v9, v7, v8);
}

float LITopInsetForHomeScreenVariant(int a1)
{
  v2 = *(MEMORY[0x277CBF3A8] + 8) + 0.0;
  outputSizeForVariant(a1);
  v4 = v3;
  expectedInputSizeForVariant(a1, 0);
  v6 = v4 - (v2 + v5);
  scaleForVariant();
  return v6 / v7;
}

float LISideInsetForHomeScreenVariant(int a1)
{
  v2 = outputSizeForVariant(a1);
  expectedInputSizeForVariant(a1, 0);
  *&v3 = (v2 - v3) * 0.5;
  v4 = floorf(*&v3);
  scaleForVariant();
  return v4 / v5;
}

double sideInsetForVariant(int a1)
{
  v2 = outputSizeForVariant(a1);
  expectedInputSizeForVariant(a1, 0);
  *&v3 = (v2 - v3) * 0.5;
  return floorf(*&v3);
}

double outputVisibleImageBoundsForVariant(int a1)
{
  v2 = *MEMORY[0x277CBF3A0];
  v3 = outputSizeForVariant(a1);
  expectedInputSizeForVariant(a1, 0);
  expectedInputSizeForVariant(a1, 0);
  *&v4 = (v3 - v4) * 0.5;
  return v2 + floorf(*&v4);
}

double LIIconOutputVisibleImageBoundsForVariant(int a1)
{
  v1 = outputVisibleImageBoundsForVariant(a1);
  scaleForVariant();
  return v1 / v2;
}

double LIIconContinuousCornerRadiusForVariant(int a1)
{
  v2 = 13.5;
  switch(a1)
  {
    case 0:
    case 15:
    case 30:
    case 32:
    case 53:
      return v2;
    case 1:
      return 17.0;
    case 2:
    case 3:
    case 16:
    case 25:
    case 33:
      return 9.0;
    case 4:
    case 17:
    case 31:
    case 34:
    case 54:
      return 6.5;
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 12:
    case 13:
    case 14:
    case 18:
    case 19:
    case 20:
    case 21:
    case 26:
    case 27:
    case 28:
    case 29:
    case 36:
    case 37:
    case 38:
    case 39:
    case 42:
    case 43:
    case 44:
    case 47:
    case 48:
    case 49:
    case 50:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
      goto LABEL_2;
    case 11:
    case 40:
    case 41:
    case 45:
    case 46:
    case 51:
    case 52:
      goto LABEL_12;
    case 22:
    case 23:
    case 35:
    case 64:
    case 65:
    case 66:
      return 4.5;
    case 24:
      return 17.125;
    case 63:
      return 18.75;
    default:
      if ((a1 - 32769) <= 4 && ((1 << (a1 - 1)) & 0x15) != 0)
      {
LABEL_2:
        if (_LIDefaultLog_onceToken != -1)
        {
          LIIconContinuousCornerRadiusForVariant_cold_1();
        }

        v3 = _LIDefaultLog_log;
        v2 = 0.0;
        if (os_log_type_enabled(_LIDefaultLog_log, OS_LOG_TYPE_FAULT))
        {
          LIIconContinuousCornerRadiusForVariant_cold_2(a1, v3);
        }

        return v2;
      }

      else
      {
LABEL_12:
        v5 = outputSizeForVariant(a1);
        v7 = v6;
        scaleForVariant();
        v9 = v7 / v8;
        v10 = v5 / v8;

        return _LICGPathCornerRadiusForSize(v10, v9);
      }
  }
}

void *LIGetIconVariantDimensionsForStyle(const __CFString *a1, const __CFString *a2)
{
  if (CFStringCompare(a1, @"LSApplicationStyleDomain", 0))
  {
    v4 = CFStringCompare(a1, @"LSDocumentStyleDomain", 0);
    result = 0;
    if (v4)
    {
      return result;
    }

    if (CFStringCompare(a2, @"IPad", 0) == kCFCompareEqualTo)
    {
      return &LIGetIconVariantDimensionsForStyle_sDocumentIconVariants_iPad;
    }

    if (CFStringCompare(a2, @"IPadBadged", 0) == kCFCompareEqualTo)
    {
      return &LIGetIconVariantDimensionsForStyle_sDocumentIconVariants_iPadBadged;
    }

    if (CFStringCompare(a2, @"IPhone", 0) == kCFCompareEqualTo)
    {
      return &LIGetIconVariantDimensionsForStyle_sDocumentIconVariants_iPhone;
    }

    v6 = &LIGetIconVariantDimensionsForStyle_sDocumentIconVariants_iPhoneBadged;
    v7 = @"IPhoneBadged";
  }

  else
  {
    if (CFStringCompare(a2, @"UIHomeScreenIcon", 0) == kCFCompareEqualTo)
    {
      return &LIGetIconVariantDimensionsForStyle_sApplicationIconVariants;
    }

    v6 = &LIGetIconVariantDimensionsForStyle_sApplicationIconVariantsSpotlight;
    v7 = @"UISpotLightIcon";
  }

  if (CFStringCompare(a2, v7, 0))
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

const __CFURL *LICopyIconPathsFromBundleForStyles(CFBundleRef bundle, const void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  if (!bundle)
  {
    return 0;
  }

  if (a2)
  {
    TypeID = CFSetGetTypeID();
    if (CFGetTypeID(a2) != TypeID)
    {
      return 0;
    }
  }

  v5 = CFBundleCopyBundleURL(bundle);
  if (!v5)
  {
    return v5;
  }

  v6 = CFURLCreateCopyAppendingPathComponent(0, v5, @"Info.plist", 0);
  if (!v6)
  {
    CFRelease(v5);
    return 0;
  }

  v7 = v6;
  v8 = CFReadStreamCreateWithFile(*MEMORY[0x277CBECE8], v6);
  if (v8)
  {
    v9 = v8;
    if (CFReadStreamOpen(v8))
    {
      v10 = CFPropertyListCreateWithStream(0, v9, 0, 0, 0, 0);
      if (v10)
      {
        v11 = CFDictionaryGetTypeID();
        if (CFGetTypeID(v10) != v11)
        {
          CFRelease(v10);
          v10 = 0;
        }
      }

      CFReadStreamClose(v9);
    }

    else
    {
      v10 = 0;
    }

    CFRelease(v9);
  }

  else
  {
    v10 = 0;
  }

  CFRelease(v7);
  CFRelease(v5);
  if (!v10)
  {
    return 0;
  }

  Mutable = CFSetCreateMutable(0, 0, MEMORY[0x277CBF158]);
  v5 = Mutable;
  if (Mutable)
  {
    *&context = bundle;
    *(&context + 1) = Mutable;
    v34 = a2;
    if (!a2 || CFSetContainsValue(a2, @"CFBundlePrimaryIcon"))
    {
      *values = xmmword_2798E5C38;
      v36 = *off_2798E5C48;
      v13 = CFArrayCreate(0, values, 4, MEMORY[0x277CBF128]);
      if (v13)
      {
        v14 = v13;
        v31 = context;
        v32 = v34;
        addURLsForIconSpecifiers(&v31, v13);
        CFRelease(v14);
      }
    }

    v15 = @"%@";
    v16 = off_2798E5C60;
    do
    {
      if (!a2 || CFSetContainsValue(a2, @"CFBundlePrimaryIcon"))
      {
        v17 = CFStringCreateWithFormat(0, 0, v15, @"CFBundleIconFile");
        if (v17)
        {
          v18 = v17;
          Value = CFDictionaryGetValue(v10, v17);
          v20 = CFStringGetTypeID();
          if (Value && CFGetTypeID(Value) == v20)
          {
            *values = context;
            *&v36 = v34;
            addURLsForIconSpecifier(values, Value, 1);
          }

          CFRelease(v18);
        }

        v21 = CFStringCreateWithFormat(0, 0, v15, @"CFBundleIconFiles");
        if (v21)
        {
          v22 = v21;
          v23 = CFDictionaryGetValue(v10, v21);
          v24 = CFArrayGetTypeID();
          if (v23 && CFGetTypeID(v23) == v24)
          {
            *values = context;
            *&v36 = v34;
            addURLsForIconSpecifiers(values, v23);
          }

          CFRelease(v22);
        }
      }

      v25 = CFStringCreateWithFormat(0, 0, v15, @"CFBundleIcons");
      if (v25)
      {
        v26 = v25;
        v27 = CFDictionaryGetValue(v10, v25);
        v28 = CFDictionaryGetTypeID();
        if (v27 && CFGetTypeID(v27) == v28)
        {
          CFDictionaryApplyFunction(v27, addURLsForCFBundleIconsEntry, &context);
        }

        CFRelease(v26);
      }

      v29 = *v16++;
      v15 = v29;
    }

    while (v29);
  }

  CFRelease(v10);
  return v5;
}

void addURLsForIconSpecifiers(__int128 *a1, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v5 = Count;
    for (i = 0; i != v5; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      TypeID = CFStringGetTypeID();
      if (ValueAtIndex)
      {
        if (CFGetTypeID(ValueAtIndex) == TypeID)
        {
          v9 = *a1;
          v10 = *(a1 + 2);
          addURLsForIconSpecifier(&v9, ValueAtIndex, 1);
        }
      }
    }
  }
}

void addURLsForIconSpecifier(CFMutableSetRef *a1, const __CFString *a2, int a3)
{
  if (!CFSetContainsValue(a1[1], a2))
  {
    v6 = CFBundleCopyResourceURL(*a1, a2, 0, 0);
    if (v6)
    {
      v7 = v6;
      if (isRegularFileAtURL(v6))
      {
        CFSetAddValue(a1[1], v7);
      }

      CFRelease(v7);
    }

    else if (a3)
    {
      v8 = @"%@.%@";
      v9 = off_2798E5CE8;
      do
      {
        v10 = CFStringCreateWithFormat(0, 0, v8, a2, @"png");
        if (v10)
        {
          v11 = v10;
          v13 = *a1;
          v14 = a1[2];
          addURLsForIconSpecifier(&v13, v10, 0);
          CFRelease(v11);
        }

        v12 = *v9++;
        v8 = v12;
      }

      while (v12);
    }
  }
}

void addURLsForCFBundleIconsEntry(const void *a1, const __CFDictionary *a2, uint64_t a3)
{
  if (a3)
  {
    TypeID = CFStringGetTypeID();
    if (a1)
    {
      if (CFGetTypeID(a1) == TypeID)
      {
        v7 = CFDictionaryGetTypeID();
        if (a2)
        {
          if (CFGetTypeID(a2) == v7)
          {
            if (!*(a3 + 16) || (v8 = CFStringGetTypeID(), CFGetTypeID(a1) == v8) && CFSetContainsValue(*(a3 + 16), a1))
            {
              Value = CFDictionaryGetValue(a2, @"CFBundleIconFiles");
              v10 = CFArrayGetTypeID();
              if (Value)
              {
                if (CFGetTypeID(Value) == v10)
                {
                  v11 = *a3;
                  v12 = *(a3 + 16);
                  addURLsForIconSpecifiers(&v11, Value);
                }
              }
            }
          }
        }
      }
    }
  }
}

void __createDocumentIconFromImage_block_invoke(uint64_t a1, CGContext *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = *(a1 + 40);
  scaleForVariant();
  v13 = v12;
  x = *MEMORY[0x277CBF3A0];
  y = *(MEMORY[0x277CBF3A0] + 8);
  width = outputSizeForVariant(v11);
  height = v17;
  if (v11 > 0x25)
  {
    goto LABEL_5;
  }

  if (((1 << v11) & 0x30143C00A0) != 0)
  {
    v19 = 1.0;
    v20 = 1.0;
LABEL_4:
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = width;
    v45.size.height = height;
    v46 = CGRectInset(v45, v19, v20);
    x = v46.origin.x;
    y = v46.origin.y;
    width = v46.size.width;
    height = v46.size.height;
    goto LABEL_5;
  }

  if (((1 << v11) & 0x140) != 0)
  {
    v19 = 4.0;
    v20 = 4.0;
    goto LABEL_4;
  }

  if (((1 << v11) & 0x28000000) != 0)
  {
    v19 = 7.0;
    v20 = 7.0;
    goto LABEL_4;
  }

LABEL_5:
  v21 = documentBaseNameForVariant(*(a1 + 40), *(a1 + 44));
  CGImageFromFrameworkBundleResourceNamed = createCGImageFromFrameworkBundleResourceNamed(v21, v13);
  if (CGImageFromFrameworkBundleResourceNamed)
  {
    v23 = CGImageFromFrameworkBundleResourceNamed;
    v47.origin.x = a3;
    v47.origin.y = a4;
    v47.size.width = a5;
    v47.size.height = a6;
    CGContextDrawImage(a2, v47, CGImageFromFrameworkBundleResourceNamed);
    CGImageRelease(v23);
  }

  else
  {
    v24 = documentBaseNameForVariant(*(a1 + 40), *(a1 + 44));
    NSLog(&cfstr_SErrorUnableTo.isa, "createDocumentIconFromImage_block_invoke", v24, *&v13);
  }

  if (*(a1 + 32))
  {
    v26 = *MEMORY[0x277CBF348];
    v25 = *(MEMORY[0x277CBF348] + 8);
    v27 = *(a1 + 40);
    v29 = *MEMORY[0x277CBF3A8];
    v28 = *(MEMORY[0x277CBF3A8] + 8);
    scaleForVariant();
    recta = v26;
    if (v27 <= 28)
    {
      if (v27 <= 17)
      {
        if (v27 > 6)
        {
          if (v27 == 7)
          {
            goto LABEL_38;
          }

          if (v27 != 8)
          {
LABEL_40:
            v48.origin.x = x;
            v48.origin.y = y;
            v48.size.width = width;
            v48.size.height = height;
            v33 = CGRectGetWidth(v48);
            v49.origin.x = recta;
            v49.origin.y = v25;
            v49.size.width = v29;
            v49.size.height = v28;
            v34 = v33 - CGRectGetWidth(v49);
            v50.origin.x = x;
            v35 = round(v34 * 0.5);
            v50.origin.y = y;
            v50.size.width = width;
            v50.size.height = height;
            v36 = CGRectGetHeight(v50);
            v51.origin.x = v35;
            v51.origin.y = v25;
            v51.size.width = v29;
            v51.size.height = v28;
            v37 = round((v36 - CGRectGetHeight(v51)) * 0.5);
            v38 = *(a1 + 32);
            v39 = v35;
            v40 = v29;
            v41 = v28;

            CGContextDrawImage(a2, *&v39, v38);
            return;
          }
        }

        else
        {
          if (v27 == 5)
          {
            goto LABEL_38;
          }

          if (v27 != 6)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
        if (v27 <= 25)
        {
          if ((v27 - 18) >= 4)
          {
            goto LABEL_40;
          }

          goto LABEL_38;
        }

        if (v27 != 27)
        {
LABEL_38:
          v32 = 20.0;
          goto LABEL_39;
        }
      }

      goto LABEL_37;
    }

    if (v27 <= 0x3E)
    {
      if (((1 << v27) & 0x380000000000000) != 0)
      {
        *&v31 = 38.0;
        goto LABEL_34;
      }

      if (((1 << v27) & 0x7000000000000000) != 0)
      {
        goto LABEL_38;
      }

      if (((1 << v27) & 0xC00000000000000) != 0)
      {
        *&v31 = 58.0;
LABEL_34:
        v32 = *&v31;
LABEL_39:
        v28 = v30 * v32;
        v29 = v30 * v32;
        goto LABEL_40;
      }
    }

    if ((v27 - 36) < 2)
    {
      goto LABEL_38;
    }

    if (v27 != 29)
    {
      goto LABEL_40;
    }

LABEL_37:
    v32 = 145.0;
    goto LABEL_39;
  }
}

__CFString *documentBaseNameForVariant(int a1, char a2)
{
  result = 0;
  if (a1 > 28)
  {
    if (a1 <= 0x3E)
    {
      if (((1 << a1) & 0x380000000000000) != 0)
      {
        v4 = @"DocumentBaseNoPageCurl-84.png";
        v5 = @"DocumentBase-84.png";
        goto LABEL_26;
      }

      if (((1 << a1) & 0x7000000000000000) != 0)
      {
        v4 = @"DocumentBaseNoPageCurl-44.png";
        v5 = @"DocumentBase-44.png";
        goto LABEL_26;
      }

      if (((1 << a1) & 0xC00000000000000) != 0)
      {
        v4 = @"DocumentBaseNoPageCurl-128.png";
        v5 = @"DocumentBase-128.png";
        goto LABEL_26;
      }
    }

    if ((a1 - 36) < 2)
    {
      goto LABEL_25;
    }

    if (a1 != 29)
    {
      return result;
    }

    goto LABEL_24;
  }

  if (a1 <= 17)
  {
    if (a1 > 6)
    {
      if (a1 == 7)
      {
        goto LABEL_25;
      }

      if (a1 != 8)
      {
        return result;
      }
    }

    else
    {
      if (a1 == 5)
      {
        goto LABEL_25;
      }

      if (a1 != 6)
      {
        return result;
      }
    }

LABEL_24:
    v4 = @"DocumentBaseNoPageCurl-320.png";
    v5 = @"DocumentBase-320.png";
    goto LABEL_26;
  }

  if (a1 <= 25)
  {
    if ((a1 - 18) >= 4)
    {
      return result;
    }

    goto LABEL_25;
  }

  if (a1 == 27)
  {
    goto LABEL_24;
  }

LABEL_25:
  v4 = @"DocumentBaseNoPageCurl-48.png";
  v5 = @"DocumentBase-48.png";
LABEL_26:
  if ((a2 & 0x40) != 0)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

uint64_t isPropertyListBooleanTrue(const __CFString *a1)
{
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    if (v2 == CFBooleanGetTypeID())
    {

      return CFBooleanGetValue(a1);
    }

    if (v2 == CFStringGetTypeID())
    {
      Length = CFStringGetLength(a1);
      if (Length >= 1)
      {
        v5 = Length;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          CharacterAtIndex = CFStringGetCharacterAtIndex(a1, v7);
          v9 = 1;
          if (CharacterAtIndex > 0x31)
          {
            goto LABEL_13;
          }

          if (((1 << CharacterAtIndex) & 0x100002600) != 0)
          {
            goto LABEL_15;
          }

          if (CharacterAtIndex != 49)
          {
LABEL_13:
            if (CharacterAtIndex - 84 > 0x25 || ((1 << (CharacterAtIndex - 84)) & 0x2100000021) == 0)
            {
              v9 = 0;
            }
          }

          v6 = v9;
LABEL_15:
          if (CharacterAtIndex <= 0x20 && ((1 << CharacterAtIndex) & 0x100002600) != 0 && v5 != ++v7)
          {
            continue;
          }

          return v6;
        }
      }
    }
  }

  return 0;
}

uint64_t isFilePathContainedInPath(CFStringRef theString, const __CFString *a2)
{
  MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
  canonicalizePath(MutableCopy);
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppend(Mutable, @"/");
  CFStringAppend(Mutable, a2);
  CFStringAppend(Mutable, @"/");
  canonicalizePath(Mutable);
  HasPrefix = CFStringHasPrefix(MutableCopy, Mutable);
  CFRelease(MutableCopy);
  CFRelease(Mutable);
  return HasPrefix;
}

CFIndex canonicalizePath(__CFString *theString)
{
  do
  {
    v3.length = CFStringGetLength(theString);
    v3.location = 0;
    result = CFStringFindAndReplace(theString, @"//", @"/", v3, 0);
  }

  while (result > 0);
  return result;
}

const __CFURL *createURLForImageInBundleWithSizeIfExists(__CFBundle *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  while (1)
  {
    if (a3)
    {
      result = 0;
      if (a4 && a5)
      {
        result = createURLForFormatInBundle(a1, @"%@-%u@%ux.%@", a2, a4, a5, a3);
      }

      if (a5 && !result)
      {
        result = createURLForFormatInBundle(a1, @"%@@%ux.%@", a2, a5, a3);
      }

      if (a4 && !result)
      {
        result = createURLForFormatInBundle(a1, @"%@-%u.%@", a2, a4, a3);
      }

      if (result)
      {
        break;
      }
    }

    v12 = a5 == 3;
    a5 = 2;
    if (!v12)
    {
      if (a3)
      {
        return createURLForFormatInBundle(a1, @"%@.%@", a2, a3);
      }

      else
      {
        return createURLForFormatInBundle(a1, @"%@", a2, 0);
      }
    }
  }

  return result;
}

const __CFURL *createURLForFormatInBundle(__CFBundle *a1, CFStringRef format, ...)
{
  va_start(va, format);
  v3 = CFStringCreateWithFormatAndArguments(0, 0, format, va);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CFBundleCopyResourceURLForLocalization(a1, v3, 0, 0, 0);
  v6 = v5;
  if (v5 && !isRegularFileAtURL(v5))
  {
    CFRelease(v6);
    v6 = 0;
  }

  CFRelease(v4);
  return v6;
}

uint64_t isRegularFileAtURL(const __CFURL *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  result = CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1026);
  if (result)
  {
    memset(&v2, 0, sizeof(v2));
    return !lstat(buffer, &v2) && (v2.st_mode & 0xF000) == 0x8000;
  }

  return result;
}

uint64_t ___frameworkBundle_block_invoke()
{
  _frameworkBundle_frameworkBundle = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.mobileicons.framework"];

  return MEMORY[0x2821F96F8]();
}

void __cuiDeviceSubtypeForVariant_block_invoke()
{
  v1 = MGCopyAnswer();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v0 = [v1 objectForKey:@"ArtworkDeviceSubType"];
    cuiDeviceSubtypeForVariant_subtype = [v0 integerValue];
  }
}

CFDataRef _LICreateIconDataForContainersWithIconsDictionaryAndPreferredIconNameWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __CFDictionary *a5, const __CFString *a6, unsigned int a7, unsigned int a8)
{
  Unique = _CFBundleCreateUnique();
  if (!Unique)
  {
    NSLog(&cfstr_SErrorUnableTo_3.isa, "_LICreateIconDataForContainersWithIconsDictionaryAndPreferredIconNameWithOptions", a4, a1);
  }

  v17 = _LICreateIconForBundleWithIconsDictionaryAndContainers(Unique, a5, a6, a2, a3, a7, a8);
  if (!v17)
  {
    v19 = 0;
    if (!Unique)
    {
      return v19;
    }

    goto LABEL_5;
  }

  v18 = v17;
  v19 = LICreateUncompressedBitmapDataFromImage(v17);
  CFRelease(v18);
  if (Unique)
  {
LABEL_5:
    CFRelease(Unique);
  }

  return v19;
}

CFDataRef _LICreateIconDataForBundleURLWithIconNameWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6)
{
  Unique = _CFBundleCreateUnique();
  if (!Unique)
  {
    NSLog(&cfstr_SErrorUnableTo_3.isa, "_LICreateIconDataForBundleURLWithIconNameWithOptions", a2, a1);
  }

  v13 = _LICreateIconForBundleWithIconNameAndDisplayGamut(Unique, a3, a4, a6, a5);
  if (!v13)
  {
    v15 = 0;
    if (!Unique)
    {
      return v15;
    }

    goto LABEL_5;
  }

  v14 = v13;
  v15 = LICreateUncompressedBitmapDataFromImage(v13);
  CFRelease(v14);
  if (Unique)
  {
LABEL_5:
    CFRelease(Unique);
  }

  return v15;
}

double _LICGPathCornerRadiusForSize(double a1, double a2)
{
  if (a1 >= a2)
  {
    a1 = a2;
  }

  return a1 * 0.225;
}

uint64_t _LICGPathCreateContinuousRoundedRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  if (a3 >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = a3;
  }

  v9 = v8 * 0.225;
  Mutable = CGPathCreateMutable();
  v11 = v9 * 1.528665 + v9 * 1.528665;
  x = v9 * 1.528665;
  if (v11 >= a3)
  {
    v12 = 2;
  }

  else
  {
    v12 = 3;
  }

  if (v11 >= a3)
  {
    v13 = 1;
  }

  else
  {
    v13 = 3;
  }

  v14 = a4 * 0.5;
  if (v11 < a4)
  {
    v14 = v9 * 1.528665;
  }

  v36 = v14;
  if (v11 >= a4)
  {
    v15 = v12 & 1;
  }

  else
  {
    v15 = v12;
  }

  if (v11 >= a4)
  {
    v16 = v13 & 2;
  }

  else
  {
    v16 = v13;
  }

  v40.origin.x = a1;
  v40.origin.y = a2;
  v40.size.width = a3;
  v40.size.height = a4;
  MinX = CGRectGetMinX(v40);
  v41.origin.x = a1;
  v41.origin.y = a2;
  v41.size.width = a3;
  v41.size.height = a4;
  MinY = CGRectGetMinY(v41);
  v42.origin.x = a1;
  v42.origin.y = a2;
  v42.size.width = a3;
  v42.size.height = a4;
  MaxX = CGRectGetMaxX(v42);
  v43.origin.x = a1;
  v43.origin.y = a2;
  v43.size.width = a3;
  v43.size.height = a4;
  v38 = CGRectGetMinY(v43);
  v44.origin.x = a1;
  v44.origin.y = a2;
  v44.size.width = a3;
  v44.size.height = a4;
  v18 = CGRectGetMinX(v44);
  v45.origin.x = a1;
  v45.origin.y = a2;
  v45.size.width = a3;
  v45.size.height = a4;
  y = CGRectGetMaxY(v45);
  v46.origin.x = a1;
  v46.origin.y = a2;
  v46.size.width = a3;
  v46.size.height = a4;
  v19 = CGRectGetMaxX(v46);
  v47.origin.x = a1;
  v47.origin.y = a2;
  v47.size.width = a3;
  v47.size.height = a4;
  MaxY = CGRectGetMaxY(v47);
  v21 = v11 < a3;
  if (v11 >= a3)
  {
    v22 = a3 * 0.5;
  }

  else
  {
    v22 = x;
  }

  v23 = v16 | v15;
  if (v21 || v23 == 0)
  {
    xa = v19;
    v25 = v11 < a4 || v23 == 0;
    v28 = v36;
    if (v25)
    {
      v27 = MinY;
    }

    else
    {
      v27 = MinY + v36 * 0.05;
      v38 = v38 + v36 * 0.05;
      y = y - v36 * 0.05;
      MaxY = MaxY - v36 * 0.05;
    }

    v26 = MinX;
  }

  else
  {
    v26 = MinX + v22 * 0.05;
    MaxX = MaxX - v22 * 0.05;
    v18 = v18 + v22 * 0.05;
    xa = v19 - v22 * 0.05;
    v28 = v36;
    v27 = MinY;
  }

  CGPathMoveToPoint(Mutable, 0, v22 + v26, v27);
  CGPathAddLineToPoint(Mutable, 0, MaxX - v22, v38);
  if (v22 == *MEMORY[0x277CBF3A8] && v28 == *(MEMORY[0x277CBF3A8] + 8))
  {
    CGPathAddLineToPoint(Mutable, 0, xa, MaxY - v28);
    CGPathAddLineToPoint(Mutable, 0, v22 + v18, y);
    CGPathAddLineToPoint(Mutable, 0, v26, v28 + v27);
  }

  else
  {
    v30 = v23 == 0;
    _addContinuousCornerToPath(Mutable, 2, v15, v30, MaxX, v38, v22, v28);
    CGPathAddLineToPoint(Mutable, 0, xa, MaxY - v28);
    _addContinuousCornerToPath(Mutable, 8, v16, v30, xa, MaxY, v22, v28);
    CGPathAddLineToPoint(Mutable, 0, v22 + v18, y);
    _addContinuousCornerToPath(Mutable, 4, v15, v30, v18, y, v22, v28);
    CGPathAddLineToPoint(Mutable, 0, v26, v28 + v27);
    _addContinuousCornerToPath(Mutable, 1, v16, v30, v26, v27, v22, v28);
  }

  CGPathAddLineToPoint(Mutable, 0, v22 + v26, v27);
  v31 = MEMORY[0x259CAC410](Mutable);
  CFRelease(Mutable);
  return v31;
}

void _addContinuousCornerToPath(CGPath *a1, int a2, int a3, int a4, double a5, double a6, double a7, double a8)
{
  v8 = a3;
  if (a7 >= a8)
  {
    v12 = a8;
  }

  else
  {
    v12 = a7;
  }

  v13 = 0.980263;
  if (a4)
  {
    v13 = 1.0;
    v14 = v12;
  }

  else
  {
    v14 = v12 * 0.95;
  }

  v69 = v13;
  v15 = 0.0;
  if ((a2 - 1) <= 3)
  {
    v15 = dbl_259AB0798[a2 - 1];
  }

  v16 = v14 * (1.0 - v13);
  if (a3 == 2)
  {
    v17 = -v16;
    v68 = 70.0;
    v18 = *MEMORY[0x277CBF348];
  }

  else if (a3 == 1)
  {
    v15 = v15 + 20.0;
    v18 = -v16;
    v68 = 70.0;
    v17 = *(MEMORY[0x277CBF348] + 8);
  }

  else if (a3)
  {
    v15 = v15 + 20.0;
    v68 = 50.0;
    v17 = *(MEMORY[0x277CBF348] + 8);
    v18 = *MEMORY[0x277CBF348];
    v14 = v14 / 1.528665;
  }

  else
  {
    v17 = -v16;
    v68 = 90.0;
    v18 = -v16;
  }

  v19 = _interiorPointForCorner(a2, v18, v17, *MEMORY[0x277CBF348]);
  v66 = v20;
  v67 = v19;
  v21 = v14 * 0.33 * 0.666666667;
  v22 = v21 * 1.05304313 + (v14 / 1.05304313 + v21 * 0.33 / 1.05304313) * 0.67;
  v23 = v21 * 1.05304313 + v22;
  v24 = v21 * 1.05304313 + v21 * 1.05304313 + v23;
  v25 = _interiorPointForCorner(a2, 0.0, v22, a5);
  v64 = v26;
  v65 = v25;
  v27 = _interiorPointForCorner(a2, 0.0, v23, a5);
  v62 = v28;
  v63 = v27;
  v29 = _interiorPointForCorner(a2, 0.0, v24, a5);
  v60 = v30;
  v61 = v29;
  v31 = _interiorPointForCorner(a2, v14, v14, a5);
  v70 = v32;
  v71 = v31;
  v33 = _interiorPointForCorner(a2, 0.0, v12, a5);
  v58 = v34;
  v59 = v33;
  memset(&m, 0, sizeof(m));
  CGAffineTransformMakeTranslation(&m, v67, v66);
  v35 = v69 * v14;
  v36 = (v15 + 0.0) * 0.0174532925;
  v37 = (v68 + v15) * 0.0174532925;
  if (v8)
  {
    v46 = __sincos_stret(v36);
    v47 = _interiorPointForCorner(a2, v22, 0.0, a5);
    v49 = v48;
    v38 = _interiorPointForCorner(a2, v23, 0.0, a5);
    p_m = &m;
    v40 = a1;
    v42 = v47;
    v43 = v49;
    v44 = v71 + v35 * v46.__cosval;
    v45 = v70 + v35 * v46.__sinval;
  }

  else
  {
    v38 = _interiorPointForCorner(a2, v12, 0.0, a5);
    v40 = a1;
    p_m = 0;
    v42 = v38;
    v43 = v39;
    v44 = v38;
    v45 = v39;
  }

  CGPathAddCurveToPoint(v40, p_m, v38, v39, v42, v43, v44, v45);
  CGPathAddArc(a1, &m, v71, v70, v35, v36, v37, 0);
  if ((v8 & 2) != 0)
  {
    v51 = &m;
    v50 = a1;
    v53 = v64;
    v52 = v65;
    v55 = v62;
    v54 = v63;
    v57 = v60;
    v56 = v61;
  }

  else
  {
    v50 = a1;
    v51 = 0;
    v53 = v58;
    v52 = v59;
    v54 = v59;
    v55 = v58;
    v56 = v59;
    v57 = v58;
  }

  CGPathAddCurveToPoint(v50, v51, v52, v53, v54, v55, v56, v57);
}

double _interiorPointForCorner(int a1, double a2, double a3, double a4)
{
  if (a1 > 3)
  {
    v5 = a2 + a4;
    v6 = a4 - a3;
    if (a1 == 8)
    {
      a2 = v6;
    }

    if (a1 == 4)
    {
      return v5;
    }

    else
    {
      return a2;
    }
  }

  else if (a1 == 1)
  {
    return a3 + a4;
  }

  else
  {
    v4 = a4 - a2;
    if (a1 != 2)
    {
      return a2;
    }
  }

  return v4;
}

void sub_259AAAA30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL _LICGImageWriteAsPNGToFilePath(CGImage *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:a2];
  v4 = CGImageDestinationCreateWithURL(v3, *MEMORY[0x277CC2120], 1uLL, 0);
  if (v4)
  {
    v5 = v4;
    CGImageDestinationAddImage(v4, a1, 0);
    v6 = CGImageDestinationFinalize(v5);
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL use_scaler_for_statistics()
{
  if (use_scaler_for_statistics_initialized != -1)
  {
    use_scaler_for_statistics_cold_1();
  }

  return luma_accelerator != 0;
}

uint64_t __use_scaler_for_statistics_block_invoke()
{
  IOSurfaceAcceleratorCreate();
  result = luma_accelerator;
  if (luma_accelerator)
  {
    return IOSurfaceAcceleratorGetServiceObject();
  }

  return result;
}

uint64_t _LICGImageCreateScaled(CGImage *a1, uint64_t a2, double a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (_LIDefaultLog_onceToken_0 != -1)
  {
    __31__LICacheClearScheduler_object__block_invoke_cold_1();
  }

  v6 = os_signpost_id_generate(_LIDefaultLog_log_0);
  if (_LIDefaultLog_onceToken_0 != -1)
  {
    __31__LICacheClearScheduler_object__block_invoke_cold_1();
  }

  v7 = _LIDefaultLog_log_0;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v13 = 134217984;
    v14 = a2;
    _os_signpost_emit_with_name_impl(&dword_259AA3000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "_LICGImageCreateScaled", "method %lu", &v13, 0xCu);
  }

  CoreImageLanczosScaled = _LICGImageCreateCoreImageLanczosScaled(a1, a3);
  if (_LIDefaultLog_onceToken_0 != -1)
  {
    __31__LICacheClearScheduler_object__block_invoke_cold_5();
  }

  v10 = _LIDefaultLog_log_0;
  v11 = v10;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(v13) = 0;
    _os_signpost_emit_with_name_impl(&dword_259AA3000, v11, OS_SIGNPOST_INTERVAL_END, v6, "_LICGImageCreateScaled", &unk_259AB1892, &v13, 2u);
  }

  return CoreImageLanczosScaled;
}

uint64_t _LICGImageCreateCoreImageLanczosScaled(CGImage *a1, double a2)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  if (_LIDefaultLog_onceToken_0 != -1)
  {
    __31__LICacheClearScheduler_object__block_invoke_cold_1();
  }

  if (os_log_type_enabled(_LIDefaultLog_log_0, OS_LOG_TYPE_DEBUG))
  {
    _LICGImageCreateCoreImageLanczosScaled_cold_2();
  }

  ColorSpace = CGImageGetColorSpace(a1);
  if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB && CGColorSpaceGetModel(ColorSpace))
  {
    if (_LIDefaultLog_onceToken_0 != -1)
    {
      __31__LICacheClearScheduler_object__block_invoke_cold_5();
    }

    if (os_log_type_enabled(_LIDefaultLog_log_0, OS_LOG_TYPE_DEBUG))
    {
      _LICGImageCreateCoreImageLanczosScaled_cold_4();
    }

    IsWideGamutRGB = CGColorSpaceIsWideGamutRGB(ColorSpace);
    v7 = MEMORY[0x277CBF430];
    if (!IsWideGamutRGB)
    {
      v7 = MEMORY[0x277CBF4B8];
    }

    v8 = CGColorSpaceCreateWithName(*v7);
    ColorSpace = CFAutorelease(v8);
  }

  v9 = [objc_alloc(MEMORY[0x277CBF758]) initWithCGImage:a1];
  v22[0] = *MEMORY[0x277CBFAF0];
  v22[1] = @"inputScale";
  v23[0] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
  v23[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];

  v12 = [MEMORY[0x277CBF750] filterWithName:@"CILanczosScaleTransform" withInputParameters:v11];
  v13 = MEMORY[0x277CBF9C8];
  v14 = CGColorSpaceIsWideGamutRGB(ColorSpace);
  v15 = MEMORY[0x277CBF9D8];
  if (!v14)
  {
    v15 = v13;
  }

  v16 = *v15;
  v17 = [MEMORY[0x277CBF740] _MI_sharedIconCompositorContext];
  v18 = [v12 outputImage];
  v19 = [v12 outputImage];
  [v19 extent];
  v20 = [v17 createCGImage:v18 fromRect:v16 format:ColorSpace colorSpace:?];

  objc_autoreleasePoolPop(v4);
  return v20;
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

CFDataRef LICreateUncompressedBitmapDataFromImageWithOptions(CGImage *a1, char a2)
{
  ColorSpace = CGImageGetColorSpace(a1);
  if (ColorSpace)
  {
    v5 = !CGColorSpaceIsWideGamutRGB(ColorSpace);
  }

  else
  {
    v5 = 1;
  }

  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  if (v5)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    if (a2)
    {
      v9 = 8198;
    }

    else
    {
      v9 = 8194;
    }

    v10 = 8;
  }

  else
  {
    DeviceRGB = CGColorSpaceCreateWithName(*MEMORY[0x277CBF430]);
    if (a2)
    {
      v9 = 4357;
    }

    else
    {
      v9 = 4353;
    }

    v10 = 16;
  }

  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  FastestAlignment = CGBitmapGetFastestAlignment();
    ;
  }

  v14 = malloc_type_calloc(i + AlignedBytesPerRow * Height, 1uLL, 0x4AB77CAFuLL);
  *v14 = -1481703392;
  *(v14 + 1) = i;
  *(v14 + 2) = Width;
  *(v14 + 3) = Height;
  *(v14 + 4) = AlignedBytesPerRow;
  *(v14 + 5) = v10;
  *(v14 + 6) = 4 * v10;
  *(v14 + 7) = v9;
  v15 = CGBitmapContextCreate(&v14[i], Width, Height, v10, AlignedBytesPerRow, DeviceRGB, v9);
  CGColorSpaceRelease(DeviceRGB);
  CGContextSetCompositeOperation();
  v19.size.width = Width;
  v19.size.height = Height;
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  CGContextDrawImage(v15, v19, a1);
  CGContextRelease(v15);
  v16 = *MEMORY[0x277CBECF0];

  return CFDataCreateWithBytesNoCopy(0, v14, i + AlignedBytesPerRow * Height, v16);
}

BOOL LIGetHeaderForUncompressedBitmapData(const __CFData *a1, _OWORD *a2)
{
  Length = CFDataGetLength(a1);
  if (Length < 0x20 || (v5 = Length, BytePtr = CFDataGetBytePtr(a1), *BytePtr != 32))
  {
    v9 = 0;
    if (!a2)
    {
      return v9;
    }

    goto LABEL_12;
  }

  v7 = *(BytePtr + 1);
  v9 = v7 >= 0x20 && v5 >= v7 && (~*BytePtr & 0xA7AF0000) == 0;
  if (a2)
  {
LABEL_12:
    if (v9)
    {
      v10 = CFDataGetBytePtr(a1);
      v11 = *(v10 + 1);
      *a2 = *v10;
      a2[1] = v11;
    }

    else
    {
      *a2 = 0u;
      a2[1] = 0u;
    }
  }

  return v9;
}

CGImageRef LICreateImageFromUncompressedBitmapData(const __CFData *a1)
{
  v10 = 0u;
  v11 = 0u;
  if (LIGetHeaderForUncompressedBitmapData(a1, &v10))
  {
    Length = CFDataGetLength(a1);
    BytePtr = CFDataGetBytePtr(a1);
    madvise(BytePtr, Length, 3);
    if (DWORD1(v11) < 9)
    {
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
    }

    else
    {
      DeviceRGB = CGColorSpaceCreateWithName(*MEMORY[0x277CBF430]);
    }

    v6 = DeviceRGB;
    v7 = CFRetain(a1);
    v8 = CGDataProviderCreateWithData(v7, &BytePtr[DWORD1(v10)], Length - DWORD1(v10), MEMORY[0x277CBE550]);
    v5 = CGImageCreate(DWORD2(v10), HIDWORD(v10), DWORD1(v11), DWORD2(v11), v11, v6, HIDWORD(v11), v8, 0, 1, kCGRenderingIntentDefault);
    CFRelease(v8);
    CGColorSpaceRelease(v6);
  }

  else
  {
    NSLog(&cfstr_SErrorBitmapDa.isa, "LICreateImageFromUncompressedBitmapData");
    return 0;
  }

  return v5;
}

unsigned int *LIGetImageInfoFromCachedUncompressedData(unsigned int *result, void *a2, void *a3, void *a4, void *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8)
{
  if (a2)
  {
    *a2 = result[1];
  }

  if (a3)
  {
    *a3 = result[2];
  }

  if (a4)
  {
    *a4 = result[3];
  }

  if (a5)
  {
    *a5 = result[4];
  }

  if (a6)
  {
    *a6 = result[5];
  }

  if (a7)
  {
    *a7 = result[6];
  }

  if (a8)
  {
    *a8 = result[7];
  }

  return result;
}

void CA_CFDictionarySetInt(__CFDictionary *a1, const __CFString *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

void CA_CFDictionarySetBool(__CFDictionary *a1, const __CFString *a2, int a3)
{
  v3 = MEMORY[0x277CBED28];
  if (!a3)
  {
    v3 = MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(a1, a2, *v3);
}

unint64_t x_align_to(uint64_t a1, unint64_t a2)
{
  v2 = a2 - 1 + a1;
  if ((a2 & (a2 - 1)) != 0)
  {
    return v2 / a2 * a2;
  }

  else
  {
    return v2 & -a2;
  }
}

IOSurfaceRef CAIOSurfaceCreate(unsigned int a1, int a2, int a3, int a4, unsigned __int8 a5, int a6, void *a7)
{
  LODWORD(v12) = a2;
  v495 = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CA_CFDictionarySetInt(Mutable, *MEMORY[0x277CD2B88], a1);
  CA_CFDictionarySetInt(Mutable, *MEMORY[0x277CD2A28], v12);
  CA_CFDictionarySetInt(Mutable, *MEMORY[0x277CD2A70], a3);
  CA_CFDictionarySetInt(Mutable, *MEMORY[0x277CD2970], a4);
  if (a3 > 1534621231)
  {
    if (a3 <= 1919365991)
    {
      if (a3 <= 1882469427)
      {
        if (a3 <= 1647534391)
        {
          if (a3 <= 1534621235)
          {
            if (a3 != 1534621232)
            {
              if (a3 != 1534621234)
              {
                goto LABEL_397;
              }

              goto LABEL_268;
            }

            goto LABEL_182;
          }

          if (a3 == 1534621236)
          {
LABEL_267:
            v490 = 0;
            v491 = 0;
            v12 = v12;
            values = create_htpc_plane_dict(a1, v12, 2, 0, &v491);
            v196 = v491;
            v194 = a1;
LABEL_269:
            v195 = v12;
            goto LABEL_270;
          }

          if (a3 != 1599554369)
          {
            if (a3 == 1599554371)
            {
              v26 = a1;
              v27 = a7[1];
              v28 = v27 - 1 + 4 * a1;
              v29 = v28 / v27 * v27;
              v30 = v28 & -v27;
              if ((v27 & (v27 - 1)) != 0)
              {
                v31 = v29;
              }

              else
              {
                v31 = v30;
              }

              v32 = a5 >> 1;
              v33 = v12;
              v12 = (v31 * v12 + 4095) & 0xFFFFFFFFFFFFF000;
              values = create_plane_dict(v26, v33, v31, 0, v12, 1, 4);
              plane_dict = create_plane_dict(v26, v33, v31, v12, v12, 1, 4);
              v34 = CFArrayCreate(0, &values, 2, MEMORY[0x277CBF128]);
              CFDictionarySetValue(Mutable, *MEMORY[0x277CD2B30], v34);
              CFRelease(v34);
              CFRelease(plane_dict);
              CFRelease(values);
              LODWORD(v12) = 2 * v12;
              goto LABEL_352;
            }

            goto LABEL_397;
          }

          v428 = a1;
          v429 = a7[1];
          v430 = v429 - 1 + 4 * a1;
          v431 = v430 / v429 * v429;
          v432 = v430 & -v429;
          if ((v429 & (v429 - 1)) != 0)
          {
            v433 = v431;
          }

          else
          {
            v433 = v432;
          }

          v434 = v12;
          v12 = (v433 * v12 + 4095) & 0xFFFFFFFFFFFFF000;
          values = create_plane_dict(v428, v434, v433, 0, v12, 1, 4);
          v435 = a7[1];
          v436 = v435 - 1 + v428;
          v437 = v436 / v435 * v435;
          v438 = v436 & -v435;
          if ((v435 & (v435 - 1)) != 0)
          {
            v439 = v437;
          }

          else
          {
            v439 = v438;
          }

          v32 = a5 >> 1;
          v440 = (v439 * v434 + 4095) & 0xFFFFFFFFFFFFF000;
          v441 = v428;
          v442 = v434;
LABEL_415:
          plane_dict = create_plane_dict(v441, v442, v439, v12, v440, 1, 1);
          v485 = CFArrayCreate(0, &values, 2, MEMORY[0x277CBF128]);
          CFDictionarySetValue(Mutable, *MEMORY[0x277CD2B30], v485);
          CFRelease(v485);
          CFRelease(plane_dict);
          CFRelease(values);
          LODWORD(v12) = v440 + v12;
          goto LABEL_352;
        }

        if (a3 > 1815162993)
        {
          if (a3 == 1815162994)
          {
            goto LABEL_235;
          }

          if (a3 != 1882468912)
          {
            if (a3 != 1882468914)
            {
              goto LABEL_397;
            }

            goto LABEL_81;
          }

LABEL_165:
          v165 = (v12 + 1) >> 1;
          v166 = rowbytes_for_packed_format(a1, a3);
          v167 = a7[1];
          v168 = a7[2];
          v169 = v167 - 1 + v166;
          v170 = v169 / v167 * v167;
          v171 = v169 & -v167;
          if ((v167 & (v167 - 1)) != 0)
          {
            v172 = v170;
          }

          else
          {
            v172 = v171;
          }

          v173 = *&v168 + v12 - 1;
          v174 = v173 / *&v168 * *&v168;
          v175 = -*&v168;
          v176 = v165 + *&v168 - 1;
          v177 = v176 / *&v168 * *&v168;
          v178 = -*&v168;
          v179 = vcnt_s8(v168);
          v179.i16[0] = vaddlv_u8(v179);
          v180 = v179.u32[0];
          v181 = v173 & v175;
          if (v179.u32[0] > 1uLL)
          {
            v181 = v174;
          }

          v182 = a7[3];
          v183 = vcnt_s8(v182);
          v183.i16[0] = vaddlv_u8(v183);
          v184 = *&v182 - 1 + v181 * v172;
          v185 = v184 & -*&v182;
          v186 = v184 / *&v182 * *&v182;
          if (v183.u32[0] <= 1uLL)
          {
            v187 = v185;
          }

          else
          {
            v187 = v186;
          }

          v188 = v12;
          v189 = v176 & v178;
          if (v180 > 1)
          {
            v189 = v177;
          }

          v190 = *&v182 - 1 + v189 * v172;
          v191 = v190 / *&v182 * *&v182;
          v192 = v190 & -*&v182;
          if (v183.u32[0] <= 1uLL)
          {
            v193 = v192;
          }

          else
          {
            v193 = v191;
          }

          v32 = a5 >> 1;
          v490 = v193;
          v491 = v187;
          values = create_plane_dict(a1, v188, v172, 0, v187, 3, 4);
          v68 = (a1 + 1) >> 1;
          v69 = v165;
          v70 = v172;
          v71 = v187;
          v72 = v193;
          goto LABEL_292;
        }

        if (a3 == 1647534392)
        {
          v454 = a7[1];
          v455 = v454 - 1 + 4 * a1;
          if ((v454 & (v454 - 1)) != 0)
          {
            v456 = v455 / v454 * v454;
          }

          else
          {
            v456 = v455 & -v454;
          }

          v471 = v12;
          v472 = a7[2];
          v473 = v12 - 1;
          v474 = v472 + v473;
          if ((v472 & (v472 - 1)) != 0)
          {
            v475 = v474 / v472 * v472;
          }

          else
          {
            v475 = v474 & -v472;
          }

          v476 = a7[3];
          v477 = v476 - 1 + v475 * v456;
          if ((v476 & (v476 - 1)) != 0)
          {
            v12 = v477 / v476 * v476;
          }

          else
          {
            v12 = v477 & -v476;
          }

          values = create_plane_dict(a1, v471, v456, 0, v12, 1, 4);
          v478 = a7[1];
          v479 = v478 - 1 + a1;
          if ((v478 & (v478 - 1)) != 0)
          {
            v439 = v479 / v478 * v478;
          }

          else
          {
            v439 = v479 & -v478;
          }

          v480 = a7[2];
          v481 = v480 + v473;
          if ((v480 & (v480 - 1)) != 0)
          {
            v482 = v481 / v480 * v480;
          }

          else
          {
            v482 = v481 & -v480;
          }

          v483 = a7[3];
          v484 = v483 - 1 + v482 * v439;
          if ((v483 & (v483 - 1)) != 0)
          {
            v440 = v484 / v483 * v483;
          }

          else
          {
            v440 = v484 & -v483;
          }

          v32 = a5 >> 1;
          v441 = a1;
          v442 = v471;
          goto LABEL_415;
        }

        if (a3 != 1714696752)
        {
          goto LABEL_397;
        }

LABEL_208:
        v236 = (v12 + 1) >> 1;
        v237 = a7[1];
        v238 = v237 - 1 + a1;
        v239 = v237 - 1 + ((a1 + 1) >> 1);
        if ((v237 & (v237 - 1)) != 0)
        {
          v241 = v238 / v237 * v237;
          v242 = v239 / v237 * v237;
        }

        else
        {
          v240 = -v237;
          v241 = v238 & v240;
          v242 = v239 & v240;
        }

        v457 = a7[2];
        v458 = vcnt_s8(v457);
        v458.i16[0] = vaddlv_u8(v458);
        v459 = v458.u32[0];
        v460 = *&v457 + v12 - 1;
        if (v458.u32[0] > 1uLL)
        {
          v461 = v460 / *&v457 * *&v457;
        }

        else
        {
          v461 = v460 & -*&v457;
        }

        v462 = a7[3];
        v463 = vcnt_s8(v462);
        v463.i16[0] = vaddlv_u8(v463);
        v464 = *&v462 - 1 + v461 * v241;
        if (v463.u32[0] > 1uLL)
        {
          v465 = v464 / *&v462 * *&v462;
        }

        else
        {
          v465 = v464 & -*&v462;
        }

        v466 = v12;
        v491 = v465;
        v467 = v236 + *&v457 - 1;
        if (v459 > 1)
        {
          v468 = v467 / *&v457 * *&v457;
        }

        else
        {
          v468 = v467 & -*&v457;
        }

        v469 = *&v462 - 1 + v468 * v242;
        if (v463.u32[0] > 1uLL)
        {
          v470 = v469 / *&v462 * *&v462;
        }

        else
        {
          v470 = v469 & -*&v462;
        }

        v32 = a5 >> 1;
        v490 = v470;
        values = create_plane_dict(a1, v466, v241, 0, v465, 1, 1);
        plane_dict = create_plane_dict((a1 + 1) >> 1, v236, v242, v465, v470, 1, 1);
        v494 = create_plane_dict((a1 + 1) >> 1, v236, v242, v470 + v465, v470, 1, 1);
        v12 = CFArrayCreate(0, &values, 3, MEMORY[0x277CBF128]);
        CFDictionarySetValue(Mutable, *MEMORY[0x277CD2B30], v12);
        CFRelease(v12);
        CFRelease(v494);
        CFRelease(plane_dict);
        CFRelease(values);
        LODWORD(v12) = v491 + 2 * v490;
        goto LABEL_352;
      }

      if (a3 <= 1886676529)
      {
        if (a3 <= 1885745713)
        {
          if (a3 != 1882469428)
          {
            if (a3 != 1885745712)
            {
              goto LABEL_397;
            }

            goto LABEL_165;
          }
        }

        else
        {
          if (a3 == 1885745714)
          {
LABEL_81:
            v73 = rowbytes_for_packed_format(a1, a3);
            v74 = a7[1];
            v75 = a7[2];
            v76 = v74 - 1 + v73;
            v77 = v76 / v74 * v74;
            v78 = v76 & -v74;
            if ((v74 & (v74 - 1)) != 0)
            {
              v79 = v77;
            }

            else
            {
              v79 = v78;
            }

            v80 = v12;
            v81 = *&v75 + v12 - 1;
            v82 = v81 / *&v75 * *&v75;
            v83 = -*&v75;
            v84 = -*&v75;
            v85 = vcnt_s8(v75);
            v85.i16[0] = vaddlv_u8(v85);
            v86 = v85.u32[0];
            v87 = v81 & v83;
            if (v85.u32[0] > 1uLL)
            {
              v87 = v82;
            }

            v88 = a7[3];
            v89 = vcnt_s8(v88);
            v89.i16[0] = vaddlv_u8(v89);
            v90 = *&v88 - 1 + v87 * v79;
            v91 = v90 / *&v88 * *&v88;
            v92 = v90 & -*&v88;
            if (v89.u32[0] <= 1uLL)
            {
              v93 = v92;
            }

            else
            {
              v93 = v91;
            }

            v94 = v81 & v84;
            if (v86 > 1)
            {
              v94 = v82;
            }

            v95 = *&v88 - 1 + v94 * v79;
            v96 = v95 / *&v88 * *&v88;
            v97 = v95 & -*&v88;
            if (v89.u32[0] <= 1uLL)
            {
              v98 = v97;
            }

            else
            {
              v98 = v96;
            }

            v32 = a5 >> 1;
            v490 = v98;
            v491 = v93;
            values = create_plane_dict(a1, v80, v79, 0, v93, 3, 4);
            v68 = (a1 + 1) >> 1;
            v69 = v80;
            v70 = v79;
            v71 = v93;
            v72 = v98;
LABEL_292:
            v226 = 3;
            v227 = 8;
            goto LABEL_350;
          }

          if (a3 != 1885746228)
          {
            if (a3 != 1886676528)
            {
              goto LABEL_397;
            }

            goto LABEL_335;
          }
        }

        v319 = rowbytes_for_packed_format(a1, a3);
        v320 = a7[1];
        v321 = a7[2];
        v322 = v320 - 1 + v319;
        v323 = v322 / v320 * v320;
        v324 = v322 & -v320;
        if ((v320 & (v320 - 1)) != 0)
        {
          v325 = v323;
        }

        else
        {
          v325 = v324;
        }

        v326 = v12;
        v327 = *&v321 + v12 - 1;
        v328 = v327 / *&v321 * *&v321;
        v329 = -*&v321;
        v330 = -*&v321;
        v331 = vcnt_s8(v321);
        v331.i16[0] = vaddlv_u8(v331);
        v332 = v331.u32[0];
        v333 = v327 & v329;
        if (v331.u32[0] > 1uLL)
        {
          v333 = v328;
        }

        v334 = a7[3];
        v335 = vcnt_s8(v334);
        v335.i16[0] = vaddlv_u8(v335);
        v336 = *&v334 - 1 + v333 * v325;
        v337 = v336 / *&v334 * *&v334;
        v338 = v336 & -*&v334;
        if (v335.u32[0] <= 1uLL)
        {
          v339 = v338;
        }

        else
        {
          v339 = v337;
        }

        v340 = 2 * v325;
        v341 = v327 & v330;
        if (v332 > 1)
        {
          v341 = v328;
        }

        v342 = *&v334 - 1 + v341 * v340;
        v343 = v342 / *&v334 * *&v334;
        v344 = v342 & -*&v334;
        if (v335.u32[0] <= 1uLL)
        {
          v345 = v344;
        }

        else
        {
          v345 = v343;
        }

        v32 = a5 >> 1;
        v490 = v345;
        v491 = v339;
        values = create_plane_dict(a1, v326, v325, 0, v339, 3, 4);
        v68 = a1;
        v69 = v326;
        v70 = v340;
        v71 = v339;
        v72 = v345;
        goto LABEL_292;
      }

      if (a3 <= 1886680623)
      {
        if (a3 != 1886676530)
        {
          v101 = 26164;
          goto LABEL_249;
        }
      }

      else
      {
        if (a3 == 1886680624)
        {
LABEL_335:
          v394 = (v12 + 1) >> 1;
          v395 = rowbytes_for_packed_format(a1, a3);
          v396 = a7[1];
          v397 = a7[2];
          v398 = v396 - 1 + v395;
          v399 = v398 / v396 * v396;
          v400 = v398 & -v396;
          if ((v396 & (v396 - 1)) != 0)
          {
            v401 = v399;
          }

          else
          {
            v401 = v400;
          }

          v402 = *&v397 + v12 - 1;
          v403 = v402 / *&v397 * *&v397;
          v404 = -*&v397;
          v405 = v394 + *&v397 - 1;
          v406 = v405 / *&v397 * *&v397;
          v407 = -*&v397;
          v408 = vcnt_s8(v397);
          v408.i16[0] = vaddlv_u8(v408);
          v409 = v408.u32[0];
          v410 = v402 & v404;
          if (v408.u32[0] > 1uLL)
          {
            v410 = v403;
          }

          v411 = a7[3];
          v412 = vcnt_s8(v411);
          v412.i16[0] = vaddlv_u8(v412);
          v413 = *&v411 - 1 + v410 * v401;
          v414 = v413 & -*&v411;
          v415 = v413 / *&v411 * *&v411;
          if (v412.u32[0] <= 1uLL)
          {
            v416 = v414;
          }

          else
          {
            v416 = v415;
          }

          v417 = v12;
          v418 = v405 & v407;
          if (v409 > 1)
          {
            v418 = v406;
          }

          v419 = *&v411 - 1 + v418 * v401;
          v420 = v419 / *&v411 * *&v411;
          v421 = v419 & -*&v411;
          if (v412.u32[0] <= 1uLL)
          {
            v422 = v421;
          }

          else
          {
            v422 = v420;
          }

          v32 = a5 >> 1;
          v490 = v422;
          v491 = v416;
          values = create_plane_dict(a1, v417, v401, 0, v416, 5, 8);
          v68 = (a1 + 1) >> 1;
          v69 = v394;
          v70 = v401;
          v71 = v416;
          v72 = v422;
LABEL_349:
          v226 = 5;
          v227 = 16;
          goto LABEL_350;
        }

        if (a3 != 1886680626)
        {
          v101 = 30260;
LABEL_249:
          if (a3 != (v101 | 0x70740000))
          {
            goto LABEL_397;
          }

          v281 = rowbytes_for_packed_format(a1, a3);
          v282 = a7[1];
          v283 = a7[2];
          v284 = v282 - 1 + v281;
          v285 = v284 / v282 * v282;
          v286 = v284 & -v282;
          if ((v282 & (v282 - 1)) != 0)
          {
            v287 = v285;
          }

          else
          {
            v287 = v286;
          }

          v288 = v12;
          v289 = *&v283 + v12 - 1;
          v290 = v289 / *&v283 * *&v283;
          v291 = -*&v283;
          v292 = -*&v283;
          v293 = vcnt_s8(v283);
          v293.i16[0] = vaddlv_u8(v293);
          v294 = v293.u32[0];
          v295 = v289 & v291;
          if (v293.u32[0] > 1uLL)
          {
            v295 = v290;
          }

          v296 = a7[3];
          v297 = vcnt_s8(v296);
          v297.i16[0] = vaddlv_u8(v297);
          v298 = *&v296 - 1 + v295 * v287;
          v299 = v298 / *&v296 * *&v296;
          v300 = v298 & -*&v296;
          if (v297.u32[0] <= 1uLL)
          {
            v301 = v300;
          }

          else
          {
            v301 = v299;
          }

          v302 = 2 * v287;
          v303 = v289 & v292;
          if (v294 > 1)
          {
            v303 = v290;
          }

          v304 = *&v296 - 1 + v303 * v302;
          v305 = v304 / *&v296 * *&v296;
          v306 = v304 & -*&v296;
          if (v297.u32[0] <= 1uLL)
          {
            v307 = v306;
          }

          else
          {
            v307 = v305;
          }

          v32 = a5 >> 1;
          v490 = v307;
          v491 = v301;
          values = create_plane_dict(a1, v288, v287, 0, v301, 5, 8);
          v68 = a1;
          v69 = v288;
          v70 = v302;
          v71 = v301;
          v72 = v307;
          goto LABEL_349;
        }
      }

      v346 = rowbytes_for_packed_format(a1, a3);
      v347 = a7[1];
      v348 = a7[2];
      v349 = v347 - 1 + v346;
      v350 = v349 / v347 * v347;
      v351 = v349 & -v347;
      if ((v347 & (v347 - 1)) != 0)
      {
        v352 = v350;
      }

      else
      {
        v352 = v351;
      }

      v353 = v12;
      v354 = *&v348 + v12 - 1;
      v355 = v354 / *&v348 * *&v348;
      v356 = -*&v348;
      v357 = -*&v348;
      v358 = vcnt_s8(v348);
      v358.i16[0] = vaddlv_u8(v358);
      v359 = v358.u32[0];
      v360 = v354 & v356;
      if (v358.u32[0] > 1uLL)
      {
        v360 = v355;
      }

      v361 = a7[3];
      v362 = vcnt_s8(v361);
      v362.i16[0] = vaddlv_u8(v362);
      v363 = *&v361 - 1 + v360 * v352;
      v364 = v363 / *&v361 * *&v361;
      v365 = v363 & -*&v361;
      if (v362.u32[0] <= 1uLL)
      {
        v366 = v365;
      }

      else
      {
        v366 = v364;
      }

      v367 = v354 & v357;
      if (v359 > 1)
      {
        v367 = v355;
      }

      v368 = *&v361 - 1 + v367 * v352;
      v369 = v368 / *&v361 * *&v361;
      v370 = v368 & -*&v361;
      if (v362.u32[0] <= 1uLL)
      {
        v371 = v370;
      }

      else
      {
        v371 = v369;
      }

      v32 = a5 >> 1;
      v490 = v371;
      v491 = v366;
      values = create_plane_dict(a1, v353, v352, 0, v366, 5, 8);
      v68 = (a1 + 1) >> 1;
      v69 = v353;
      v70 = v352;
      v71 = v366;
      v72 = v371;
      goto LABEL_349;
    }

    if (a3 <= 2016686641)
    {
      if (a3 <= 1953903153)
      {
        if (a3 <= 1952854577)
        {
          if (a3 == 1919365992)
          {
            v447 = a7[1];
            v448 = v447 - 1 + 2 * a1;
            v449 = v448 / v447 * v447;
            v450 = v448 & -v447;
            if ((v447 & (v447 - 1)) != 0)
            {
              v451 = v449;
            }

            else
            {
              v451 = v450;
            }

            v32 = a5 >> 1;
            v452 = v12;
            v12 = v451 * v12;
            values = create_plane_dict(a1, v452, v451, 0, v12, 1, 2);
            plane_dict = create_plane_dict(a1, v452, v451, v12, v12, 1, 2);
            v494 = create_plane_dict(a1, v452, v451, 2 * v12, v12, 1, 2);
            v453 = CFArrayCreate(0, &values, 3, MEMORY[0x277CBF128]);
            CFDictionarySetValue(Mutable, *MEMORY[0x277CD2B30], v453);
            CFRelease(v453);
            CFRelease(values);
            CFRelease(plane_dict);
            CFRelease(v494);
            LODWORD(v12) = 3 * v12;
            goto LABEL_352;
          }

          v35 = 1952854576;
LABEL_132:
          if (a3 != v35)
          {
            goto LABEL_397;
          }

          goto LABEL_133;
        }

        if (a3 != 1952854578)
        {
          if (a3 != 1952855092)
          {
            v35 = 1953903152;
            goto LABEL_132;
          }

LABEL_276:
          v313 = a7[1];
          v314 = v313 - 1 + 2 * a1;
          v315 = v313 - 1 + 4 * a1;
          if ((v313 & (v313 - 1)) != 0)
          {
            v317 = v314 / v313 * v313;
            v318 = v315 / v313 * v313;
          }

          else
          {
            v316 = -v313;
            v317 = v314 & v316;
            v318 = v315 & v316;
          }

          v376 = a7[2];
          v377 = vcnt_s8(v376);
          v377.i16[0] = vaddlv_u8(v377);
          v378 = v377.u32[0];
          v379 = *&v376 + v12 - 1;
          v380 = v379 / *&v376;
          if (v377.u32[0] > 1uLL)
          {
            v381 = v380 * *&v376;
          }

          else
          {
            v381 = v379 & -*&v376;
          }

          v382 = a7[3];
          v383 = vcnt_s8(v382);
          v383.i16[0] = vaddlv_u8(v383);
          v384 = *&v382 - 1 + v381 * v317;
          if (v383.u32[0] > 1uLL)
          {
            v385 = v384 / *&v382 * *&v382;
          }

          else
          {
            v385 = v384 & -*&v382;
          }

          v491 = v385;
          if (v378 > 1)
          {
            v386 = v380 * *&v376;
          }

          else
          {
            v386 = v379 & -*&v376;
          }

          v387 = *&v382 - 1 + v386 * v318;
          if (v383.u32[0] > 1uLL)
          {
            v388 = v387 / *&v382 * *&v382;
          }

          else
          {
            v388 = v387 & -*&v382;
          }

          v32 = a5 >> 1;
          v490 = v388;
          values = create_plane_dict(a1, v12, v317, 0, v385, 1, 2);
          v68 = a1;
          v69 = v12;
          v70 = v318;
          v71 = v385;
          v72 = v388;
LABEL_326:
          v226 = 1;
          v227 = 4;
          goto LABEL_350;
        }

LABEL_218:
        v243 = a7[1];
        v244 = a7[2];
        v245 = v243 - 1 + 2 * a1;
        v246 = v245 / v243 * v243;
        v247 = v245 & -v243;
        if ((v243 & (v243 - 1)) != 0)
        {
          v248 = v246;
        }

        else
        {
          v248 = v247;
        }

        v249 = v12;
        v250 = *&v244 + v12 - 1;
        v251 = v250 / *&v244 * *&v244;
        v252 = -*&v244;
        v253 = -*&v244;
        v254 = vcnt_s8(v244);
        v254.i16[0] = vaddlv_u8(v254);
        v255 = v254.u32[0];
        v256 = v250 & v252;
        if (v254.u32[0] > 1uLL)
        {
          v256 = v251;
        }

        v257 = a7[3];
        v258 = vcnt_s8(v257);
        v258.i16[0] = vaddlv_u8(v258);
        v259 = *&v257 - 1 + v256 * v248;
        v260 = v259 / *&v257 * *&v257;
        v261 = v259 & -*&v257;
        if (v258.u32[0] <= 1uLL)
        {
          v262 = v261;
        }

        else
        {
          v262 = v260;
        }

        v263 = v250 & v253;
        if (v255 > 1)
        {
          v263 = v251;
        }

        v264 = *&v257 - 1 + v263 * v248;
        v265 = v264 / *&v257 * *&v257;
        v266 = v264 & -*&v257;
        if (v258.u32[0] <= 1uLL)
        {
          v267 = v266;
        }

        else
        {
          v267 = v265;
        }

        v32 = a5 >> 1;
        v490 = v267;
        v491 = v262;
        values = create_plane_dict(a1, v249, v248, 0, v262, 1, 2);
        v68 = (a1 + 1) >> 1;
        v69 = v249;
        v70 = v248;
        v71 = v262;
        v72 = v267;
        goto LABEL_326;
      }

      if (a3 > 1999843441)
      {
        if (a3 == 1999843442)
        {
          goto LABEL_235;
        }

        if (a3 == 1999908961)
        {
LABEL_308:
          v372 = a7[1];
          v373 = v372 - 1 + 8 * a1;
          v374 = v373 / v372 * v372;
          v375 = v373 & -v372;
          if ((v372 & (v372 - 1)) != 0)
          {
            v232 = v374;
          }

          else
          {
            v232 = v375;
          }

          v233 = *MEMORY[0x277CD2960];
          v234 = Mutable;
          v235 = 8;
          goto LABEL_240;
        }

        v35 = 2016686640;
        goto LABEL_132;
      }

      if (a3 == 1953903154)
      {
        goto LABEL_218;
      }

      v197 = 1953903668;
LABEL_216:
      if (a3 != v197)
      {
        goto LABEL_397;
      }

      goto LABEL_276;
    }

    if (a3 > 2019963955)
    {
      if (a3 > 2033463855)
      {
        if (a3 != 2033463856)
        {
          if (a3 == 2037741158)
          {
            goto LABEL_202;
          }

          v100 = 2037741171;
          goto LABEL_119;
        }

        goto LABEL_208;
      }

      if (a3 == 2019963956)
      {
        goto LABEL_276;
      }

      if (a3 != 2019964016)
      {
        goto LABEL_397;
      }
    }

    else
    {
      if (a3 <= 2016687215)
      {
        if (a3 == 2016686642)
        {
          goto LABEL_218;
        }

        v197 = 2016687156;
        goto LABEL_216;
      }

      if (a3 != 2016687216)
      {
        if (a3 == 2019963440)
        {
LABEL_133:
          v110 = (v12 + 1) >> 1;
          v111 = a7[1];
          v112 = a7[2];
          v113 = v111 - 1 + 2 * a1;
          v114 = v113 / v111 * v111;
          v115 = v113 & -v111;
          if ((v111 & (v111 - 1)) != 0)
          {
            v116 = v114;
          }

          else
          {
            v116 = v115;
          }

          v117 = *&v112 + v12 - 1;
          v118 = v117 / *&v112 * *&v112;
          v119 = -*&v112;
          v120 = v110 + *&v112 - 1;
          v121 = v120 / *&v112 * *&v112;
          v122 = -*&v112;
          v123 = vcnt_s8(v112);
          v123.i16[0] = vaddlv_u8(v123);
          v124 = v123.u32[0];
          v125 = v117 & v119;
          if (v123.u32[0] > 1uLL)
          {
            v125 = v118;
          }

          v126 = a7[3];
          v127 = vcnt_s8(v126);
          v127.i16[0] = vaddlv_u8(v127);
          v128 = *&v126 - 1 + v125 * v116;
          v129 = v128 & -*&v126;
          v130 = v128 / *&v126 * *&v126;
          if (v127.u32[0] <= 1uLL)
          {
            v131 = v129;
          }

          else
          {
            v131 = v130;
          }

          v132 = v12;
          v133 = v120 & v122;
          if (v124 > 1)
          {
            v133 = v121;
          }

          v134 = *&v126 - 1 + v133 * v116;
          v135 = v134 / *&v126 * *&v126;
          v136 = v134 & -*&v126;
          if (v127.u32[0] <= 1uLL)
          {
            v137 = v136;
          }

          else
          {
            v137 = v135;
          }

          v32 = a5 >> 1;
          v490 = v137;
          v491 = v131;
          values = create_plane_dict(a1, v132, v116, 0, v131, 1, 2);
          v68 = (a1 + 1) >> 1;
          v69 = v110;
          v70 = v116;
          v71 = v131;
          v72 = v137;
          goto LABEL_326;
        }

        if (a3 != 2019963442)
        {
          goto LABEL_397;
        }

        goto LABEL_218;
      }
    }

    v309 = a7[1];
    v310 = v309 - 1 + 4 * a1;
    v311 = v310 / v309 * v309;
    v312 = v310 & -v309;
    if ((v309 & (v309 - 1)) != 0)
    {
      v232 = v311;
    }

    else
    {
      v232 = v312;
    }

    goto LABEL_239;
  }

  if (a3 > 1279340599)
  {
    if (a3 <= 1530426931)
    {
      if (a3 <= 1530422831)
      {
        if (a3 <= 1380401728)
        {
          if (a3 == 1279340600)
          {
            goto LABEL_202;
          }

          v109 = 1378955371;
LABEL_234:
          if (a3 != v109)
          {
            goto LABEL_397;
          }

          goto LABEL_235;
        }

        if (a3 != 1380401729)
        {
          if (a3 == 1380410945)
          {
            v443 = a7[1];
            v444 = v443 - 1 + 16 * a1;
            v445 = v444 / v443 * v443;
            v446 = v444 & -v443;
            if ((v443 & (v443 - 1)) != 0)
            {
              v232 = v445;
            }

            else
            {
              v232 = v446;
            }

            v233 = *MEMORY[0x277CD2960];
            v234 = Mutable;
            v235 = 16;
            goto LABEL_240;
          }

          if (a3 != 1380411457)
          {
            goto LABEL_397;
          }

          goto LABEL_308;
        }

LABEL_235:
        v268 = a7[1];
        v269 = v268 - 1 + 4 * a1;
        v270 = v269 / v268 * v268;
        v271 = v269 & -v268;
        if ((v268 & (v268 - 1)) != 0)
        {
          v39 = v270;
        }

        else
        {
          v39 = v271;
        }

LABEL_238:
        v232 = (v39 + 255) & 0xFFFFFFFFFFFFFF00;
LABEL_239:
        v233 = *MEMORY[0x277CD2960];
        v234 = Mutable;
        v235 = 4;
LABEL_240:
        CA_CFDictionarySetInt(v234, v233, v235);
        CA_CFDictionarySetInt(Mutable, *MEMORY[0x277CD2968], v232);
        v272 = a7[2];
        v273 = a7[3];
        v274 = v272 - 1 + v12;
        v275 = v274 / v272 * v272;
        v276 = v274 & -v272;
        if ((v272 & (v272 - 1)) != 0)
        {
          v277 = v275;
        }

        else
        {
          v277 = v276;
        }

        v278 = v273 - 1 + v277 * v232;
        v279 = v278 / v273 * v273;
        v280 = v278 & -v273;
        if ((v273 & (v273 - 1)) != 0)
        {
          LODWORD(v12) = v279;
        }

        else
        {
          LODWORD(v12) = v280;
        }

        v32 = a5 >> 1;
        goto LABEL_352;
      }

      if (a3 <= 1530422835)
      {
        if (a3 != 1530422832)
        {
          v99 = 26162;
          goto LABEL_212;
        }

LABEL_293:
        v490 = 0;
        v491 = 0;
        values = create_htpc_plane_dict(a1, v12, 1, 0, &v491);
        v194 = (a1 + 1) >> 1;
        v195 = (v12 + 1) >> 1;
        v196 = v491;
LABEL_329:
        v308 = 2;
        goto LABEL_330;
      }

      if (a3 != 1530422836)
      {
        if (a3 != 1530426928)
        {
          v99 = 30258;
LABEL_212:
          if (a3 != (v99 | 0x5B380000))
          {
            goto LABEL_397;
          }

          v490 = 0;
          v491 = 0;
          v12 = v12;
          values = create_htpc_plane_dict(a1, v12, 1, 0, &v491);
          v194 = (a1 + 1) >> 1;
          v196 = v491;
          goto LABEL_328;
        }

        goto LABEL_293;
      }

LABEL_327:
      v490 = 0;
      v491 = 0;
      v12 = v12;
      values = create_htpc_plane_dict(a1, v12, 1, 0, &v491);
      v196 = v491;
      v194 = a1;
LABEL_328:
      v195 = v12;
      goto LABEL_329;
    }

    if (a3 <= 1534359089)
    {
      if (a3 <= 1534354993)
      {
        if (a3 == 1530426932)
        {
          goto LABEL_327;
        }

        v40 = 26160;
        goto LABEL_181;
      }

      if (a3 != 1534354994)
      {
        if (a3 != 1534354996)
        {
          v40 = 30256;
LABEL_181:
          if (a3 != (v40 | 0x5B740000))
          {
            goto LABEL_397;
          }

          goto LABEL_182;
        }

        goto LABEL_267;
      }

LABEL_268:
      v490 = 0;
      v491 = 0;
      v12 = v12;
      values = create_htpc_plane_dict(a1, v12, 2, 0, &v491);
      v194 = (a1 + 1) >> 1;
      v196 = v491;
      goto LABEL_269;
    }

    if (a3 <= 1534617135)
    {
      if (a3 == 1534359090)
      {
        goto LABEL_268;
      }

      v102 = 1534359092;
LABEL_266:
      if (a3 != v102)
      {
        goto LABEL_397;
      }

      goto LABEL_267;
    }

    if (a3 != 1534617136)
    {
      if (a3 == 1534617138)
      {
        goto LABEL_268;
      }

      v102 = 1534617140;
      goto LABEL_266;
    }

LABEL_182:
    v490 = 0;
    v491 = 0;
    values = create_htpc_plane_dict(a1, v12, 2, 0, &v491);
    v194 = (a1 + 1) >> 1;
    v195 = (v12 + 1) >> 1;
    v196 = v491;
LABEL_270:
    v308 = 4;
LABEL_330:
    plane_dict = create_htpc_plane_dict(v194, v195, v308, v196, &v490);
    v389 = CFArrayCreate(0, &values, 2, MEMORY[0x277CBF128]);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CD2B30], v389);
    CFRelease(v389);
    CFRelease(plane_dict);
    CFRelease(values);
    v32 = 0;
LABEL_351:
    LODWORD(v12) = v490 + v491;
    goto LABEL_352;
  }

  if (a3 > 875836467)
  {
    if (a3 <= 1093677111)
    {
      if (a3 <= 875836533)
      {
        if (a3 == 875836468)
        {
          goto LABEL_202;
        }

        if (a3 != 875836518)
        {
          goto LABEL_397;
        }
      }

      else if (a3 != 875836534)
      {
        if (a3 != 1027423537 && a3 != 1027423539)
        {
          goto LABEL_397;
        }

        v36 = a7[1];
        v37 = v36 - 1 + 4 * a1;
        v38 = v37 / v36 * v36;
        v39 = v37 & -v36;
        if ((v36 & (v36 - 1)) != 0)
        {
          v39 = v38;
        }

        goto LABEL_238;
      }

      v138 = a1;
      v139 = a7[1];
      v140 = a7[2];
      v141 = v139 - 1 + a1;
      v142 = v141 / v139 * v139;
      v143 = v141 & -v139;
      if ((v139 & (v139 - 1)) != 0)
      {
        v144 = v142;
      }

      else
      {
        v144 = v143;
      }

      v145 = v12;
      v146 = *&v140 + v12 - 1;
      v147 = v146 / *&v140 * *&v140;
      v148 = -*&v140;
      v149 = -*&v140;
      v150 = vcnt_s8(v140);
      v150.i16[0] = vaddlv_u8(v150);
      v151 = v150.u32[0];
      v152 = v146 & v148;
      if (v150.u32[0] > 1uLL)
      {
        v152 = v147;
      }

      v153 = a7[3];
      v154 = vcnt_s8(v153);
      v154.i16[0] = vaddlv_u8(v154);
      v155 = *&v153 - 1 + v152 * v144;
      v156 = v155 / *&v153 * *&v153;
      v157 = v155 & -*&v153;
      if (v154.u32[0] <= 1uLL)
      {
        v158 = v157;
      }

      else
      {
        v158 = v156;
      }

      v159 = 2 * v144;
      v160 = v146 & v149;
      if (v151 > 1)
      {
        v160 = v147;
      }

      v161 = *&v153 - 1 + v160 * v159;
      v162 = v161 / *&v153 * *&v153;
      v163 = v161 & -*&v153;
      if (v154.u32[0] <= 1uLL)
      {
        v164 = v163;
      }

      else
      {
        v164 = v162;
      }

      v32 = a5 >> 1;
      v490 = v164;
      v491 = v158;
      values = create_plane_dict(v138, v145, v144, 0, v158, 1, 1);
      v68 = v138;
      v69 = v145;
      v70 = v159;
      v71 = v158;
      v72 = v164;
      goto LABEL_201;
    }

    if (a3 > 1278226487)
    {
      if (a3 != 1278226488)
      {
        if (a3 == 1278555445)
        {
          goto LABEL_202;
        }

        v100 = 1278555701;
LABEL_119:
        if (a3 != v100)
        {
          goto LABEL_397;
        }

        goto LABEL_202;
      }

LABEL_331:
      v390 = a7[1];
      v391 = v390 - 1 + a1;
      v392 = v391 / v390 * v390;
      v393 = v391 & -v390;
      if ((v390 & (v390 - 1)) != 0)
      {
        v232 = v392;
      }

      else
      {
        v232 = v393;
      }

      v233 = *MEMORY[0x277CD2960];
      v234 = Mutable;
      v235 = 1;
      goto LABEL_240;
    }

    if (a3 == 1093677112)
    {
      goto LABEL_331;
    }

    v109 = 1111970369;
    goto LABEL_234;
  }

  if (a3 > 846624120)
  {
    if (a3 > 875704437)
    {
      if (a3 != 875704438)
      {
        if (a3 != 875704934 && a3 != 875704950)
        {
          goto LABEL_397;
        }

        v41 = (a1 + 1) >> 1;
        v42 = a1;
        v43 = a7[1];
        v44 = a7[2];
        v45 = v43 - 1 + a1;
        v46 = v45 / v43 * v43;
        v47 = v45 & -v43;
        if ((v43 & (v43 - 1)) != 0)
        {
          v48 = v46;
        }

        else
        {
          v48 = v47;
        }

        v49 = v12;
        v50 = *&v44 + v12 - 1;
        v51 = v50 / *&v44 * *&v44;
        v52 = -*&v44;
        v53 = -*&v44;
        v54 = vcnt_s8(v44);
        v54.i16[0] = vaddlv_u8(v54);
        v55 = v54.u32[0];
        v56 = v50 & v52;
        if (v54.u32[0] > 1uLL)
        {
          v56 = v51;
        }

        v57 = a7[3];
        v58 = vcnt_s8(v57);
        v58.i16[0] = vaddlv_u8(v58);
        v59 = *&v57 - 1 + v56 * v48;
        v60 = v59 / *&v57 * *&v57;
        v61 = v59 & -*&v57;
        if (v58.u32[0] <= 1uLL)
        {
          v62 = v61;
        }

        else
        {
          v62 = v60;
        }

        v63 = v50 & v53;
        if (v55 > 1)
        {
          v63 = v51;
        }

        v64 = *&v57 - 1 + v63 * v48;
        v65 = v64 / *&v57 * *&v57;
        v66 = v64 & -*&v57;
        if (v58.u32[0] <= 1uLL)
        {
          v67 = v66;
        }

        else
        {
          v67 = v65;
        }

        v32 = a5 >> 1;
        v490 = v67;
        v491 = v62;
        values = create_plane_dict(v42, v49, v48, 0, v62, 1, 1);
        v68 = v41;
        v69 = v49;
        v70 = v48;
        v71 = v62;
        v72 = v67;
        goto LABEL_201;
      }

      goto LABEL_187;
    }

    if (a3 != 846624121)
    {
      if (a3 != 875704422)
      {
        goto LABEL_397;
      }

LABEL_187:
      v198 = (v12 + 1) >> 1;
      v199 = a7[1];
      v200 = a7[2];
      v201 = v199 - 1 + a1;
      v202 = v201 / v199 * v199;
      v203 = v201 & -v199;
      if ((v199 & (v199 - 1)) != 0)
      {
        v204 = v202;
      }

      else
      {
        v204 = v203;
      }

      v205 = *&v200 + v12 - 1;
      v206 = v205 / *&v200 * *&v200;
      v207 = -*&v200;
      v208 = v198 + *&v200 - 1;
      v209 = v208 / *&v200 * *&v200;
      v210 = -*&v200;
      v211 = vcnt_s8(v200);
      v211.i16[0] = vaddlv_u8(v211);
      v212 = v211.u32[0];
      v213 = v205 & v207;
      if (v211.u32[0] > 1uLL)
      {
        v213 = v206;
      }

      v214 = a7[3];
      v215 = vcnt_s8(v214);
      v215.i16[0] = vaddlv_u8(v215);
      v216 = *&v214 - 1 + v213 * v204;
      v217 = v216 & -*&v214;
      v218 = v216 / *&v214 * *&v214;
      if (v215.u32[0] <= 1uLL)
      {
        v219 = v217;
      }

      else
      {
        v219 = v218;
      }

      v220 = v12;
      v221 = v208 & v210;
      if (v212 > 1)
      {
        v221 = v209;
      }

      v222 = *&v214 - 1 + v221 * v204;
      v223 = v222 / *&v214 * *&v214;
      v224 = v222 & -*&v214;
      if (v215.u32[0] <= 1uLL)
      {
        v225 = v224;
      }

      else
      {
        v225 = v223;
      }

      v32 = a5 >> 1;
      v490 = v225;
      v491 = v219;
      values = create_plane_dict(a1, v220, v204, 0, v219, 1, 1);
      v68 = (a1 + 1) >> 1;
      v69 = v198;
      v70 = v204;
      v71 = v219;
      v72 = v225;
LABEL_201:
      v226 = 1;
      v227 = 2;
LABEL_350:
      plane_dict = create_plane_dict(v68, v69, v70, v71, v72, v226, v227);
      v423 = CFArrayCreate(0, &values, 2, MEMORY[0x277CBF128]);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD2B30], v423);
      CFRelease(v423);
      CFRelease(plane_dict);
      CFRelease(values);
      goto LABEL_351;
    }

LABEL_202:
    v228 = a7[1];
    v229 = v228 - 1 + 2 * a1;
    v230 = v229 / v228 * v228;
    v231 = v229 & -v228;
    if ((v228 & (v228 - 1)) != 0)
    {
      v232 = v230;
    }

    else
    {
      v232 = v231;
    }

    v233 = *MEMORY[0x277CD2960];
    v234 = Mutable;
    v235 = 2;
    goto LABEL_240;
  }

  if (a3 <= 642934848)
  {
    if (a3 != 32)
    {
      if (a3 != 641877825)
      {
        goto LABEL_397;
      }

      goto LABEL_123;
    }

    goto LABEL_235;
  }

  if (a3 != 642934849)
  {
    if (a3 != 645346162)
    {
      if (a3 == 645346401)
      {
        goto LABEL_9;
      }

LABEL_397:
      CFRelease(Mutable);
      return 0;
    }

LABEL_123:
    v103 = a1;
    v104 = (4 * a1 + 255) & 0x7FFFFFF00;
    v105 = v12;
    CA_CFDictionarySetInt(Mutable, *MEMORY[0x277CD2960], 4);
    CA_CFDictionarySetInt(Mutable, *MEMORY[0x277CD2968], (4 * a1 + 255) & 0xFFFFFF00);
    v106 = ((v12 + 63) & 0x1FFFFFFC0) * v104;
    v107 = vcvtps_u32_f32(log2f(ceilf(vcvts_n_f32_u32(a1, 4uLL))));
    v12 = (v104 + v106 + (((2 << v107 << vcvtps_u32_f32(log2f(ceilf(vcvts_n_f32_u32(v12, 4uLL))))) + 127) & 0xFFFFFF80) - 1) / v104 * v104;
    v20 = v103;
    v21 = v105;
    v22 = v104;
    v23 = v12;
    v24 = 4;
    v19 = v106;
    v25 = 16;
    goto LABEL_124;
  }

LABEL_9:
  v15 = a1;
  v16 = (8 * a1 + 255) & 0xFFFFFFF00;
  v17 = v12;
  v489 = (v12 + 63) & 0x1FFFFFFC0;
  CA_CFDictionarySetInt(Mutable, *MEMORY[0x277CD2960], 8);
  CA_CFDictionarySetInt(Mutable, *MEMORY[0x277CD2968], v16);
  agx_add_metadata_padding(v16, v15, v12, 8uLL, 0x10uLL, &v489, &v488, v18);
  v19 = v488;
  LODWORD(v12) = v489 * v16;
  v20 = v15;
  v21 = v17;
  v22 = v16;
  v23 = v489 * v16;
  v24 = 8;
  v25 = 8;
LABEL_124:
  values = create_agx_plane_dict(v20, v21, v22, v23, v24, v19, v25, 16, v486, v487);
  v108 = CFArrayCreate(0, &values, 1, MEMORY[0x277CBF128]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CD2B30], v108);
  CFRelease(v108);
  CFRelease(values);
  v32 = 0;
LABEL_352:
  CA_CFDictionarySetInt(Mutable, *MEMORY[0x277CD2948], v12);
  if (a6)
  {
    CA_CFDictionarySetInt(Mutable, *MEMORY[0x277CD2B70], a6);
  }

  v424 = *MEMORY[0x277CBED28];
  if ((a5 & 0x10) != 0)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277CD2A38], *MEMORY[0x277CBED28]);
  }

  if ((a5 & 8) != 0)
  {
    v425 = v424;
  }

  else
  {
    v425 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, *MEMORY[0x277CD2A68], v425);
  if (v32)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277CD2958], v424);
  }

  if ((a5 & 4) != 0)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277CD2A48], @"PurpleGfxMem");
  }

  v426 = IOSurfaceCreate(Mutable);
  CFRelease(Mutable);
  if (v426)
  {
    IOSurfaceSetBulkAttachments2();
  }

  return v426;
}

void agx_add_metadata_padding(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t *a6, unint64_t *a7, unint64_t *a8)
{
  v12 = (*a6 * a1 + 127) & 0xFFFFFFFFFFFFFF80;
  *a7 = v12;
  v13 = vcvtps_u32_f32(log2f(ceilf(a2 / a4)));
  *a6 = (a1 + v12 + (((2 << v13 << vcvtps_u32_f32(log2f(ceilf(a3 / a5)))) + 127) & 0xFFFFFF80) - 1) / a1;
}

CFDictionaryRef create_agx_plane_dict(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  keys[15] = *MEMORY[0x277D85DE8];
  v37 = a2;
  valuePtr = a1;
  v35 = 0;
  v36 = a3;
  v33 = a5;
  v34 = a4;
  v31 = a6;
  v32 = 0;
  v29 = a8;
  v30 = a7;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v28 = 3;
  v27 = 2;
  v10 = *MEMORY[0x277CD2B18];
  keys[0] = *MEMORY[0x277CD2B50];
  keys[1] = v10;
  v11 = *MEMORY[0x277CD2AA0];
  keys[2] = *MEMORY[0x277CD2B38];
  keys[3] = v11;
  v12 = *MEMORY[0x277CD2A98];
  keys[4] = *MEMORY[0x277CD2B40];
  keys[5] = v12;
  v13 = *MEMORY[0x277CD2AC0];
  keys[6] = *MEMORY[0x277CD2AB8];
  keys[7] = v13;
  v14 = *MEMORY[0x277CD2AE0];
  keys[8] = *MEMORY[0x277CD2940];
  keys[9] = v14;
  v15 = *MEMORY[0x277CD2AC8];
  keys[10] = *MEMORY[0x277CD2AD0];
  keys[11] = v15;
  v16 = *MEMORY[0x277CD2B20];
  keys[12] = *MEMORY[0x277CD2B58];
  keys[13] = v16;
  keys[14] = *MEMORY[0x277CD2A90];
  values[0] = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  values[1] = CFNumberCreate(0, kCFNumberCFIndexType, &v37);
  values[2] = CFNumberCreate(0, kCFNumberCFIndexType, &v35);
  values[3] = CFNumberCreate(0, kCFNumberCFIndexType, &v36);
  values[4] = CFNumberCreate(0, kCFNumberCFIndexType, &v34);
  values[5] = CFNumberCreate(0, kCFNumberCFIndexType, &v33);
  values[6] = CFNumberCreate(0, kCFNumberCFIndexType, &v32);
  values[7] = CFNumberCreate(0, kCFNumberCFIndexType, &v31);
  values[8] = CFNumberCreate(0, kCFNumberCFIndexType, &v28);
  values[9] = CFNumberCreate(0, kCFNumberCFIndexType, &v27);
  values[10] = CFNumberCreate(0, kCFNumberCFIndexType, &v30);
  values[11] = CFNumberCreate(0, kCFNumberCFIndexType, &v29);
  v17 = v30 - 1 + valuePtr;
  if ((v30 & (v30 - 1)) != 0)
  {
    v18 = v17 / v30 * v30;
  }

  else
  {
    v18 = v17 & -v30;
  }

  v19 = v29 - 1 + v37;
  if ((v29 & (v29 - 1)) != 0)
  {
    v20 = v19 / v29 * v29;
  }

  else
  {
    v20 = v19 & -v29;
  }

  v26 = v18 / v30;
  v24 = 2;
  v25 = v20 / v29;
  v40 = CFNumberCreate(0, kCFNumberCFIndexType, &v26);
  v41 = CFNumberCreate(0, kCFNumberCFIndexType, &v25);
  v42 = CFNumberCreate(0, kCFNumberCFIndexType, &v24);
  v21 = CFDictionaryCreate(0, keys, values, 15, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  for (i = 0; i != 15; ++i)
  {
    CFRelease(values[i]);
  }

  return v21;
}

CFDictionaryRef create_plane_dict(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  keys[7] = *MEMORY[0x277D85DE8];
  v18 = a2;
  valuePtr = a1;
  v16 = a4;
  v17 = a3;
  v14 = a6;
  v15 = a5;
  v13 = a7;
  v7 = *MEMORY[0x277CD2B18];
  keys[0] = *MEMORY[0x277CD2B50];
  keys[1] = v7;
  v8 = *MEMORY[0x277CD2B38];
  keys[2] = *MEMORY[0x277CD2AA0];
  keys[3] = v8;
  v9 = *MEMORY[0x277CD2AF0];
  keys[4] = *MEMORY[0x277CD2B40];
  keys[5] = v9;
  keys[6] = *MEMORY[0x277CD2A98];
  values[0] = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  values[1] = CFNumberCreate(0, kCFNumberCFIndexType, &v18);
  values[2] = CFNumberCreate(0, kCFNumberCFIndexType, &v17);
  values[3] = CFNumberCreate(0, kCFNumberCFIndexType, &v16);
  values[4] = CFNumberCreate(0, kCFNumberCFIndexType, &v15);
  values[5] = CFNumberCreate(0, kCFNumberCFIndexType, &v14);
  values[6] = CFNumberCreate(0, kCFNumberCFIndexType, &v13);
  v10 = CFDictionaryCreate(0, keys, values, 7, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  for (i = 0; i != 7; ++i)
  {
    CFRelease(values[i]);
  }

  return v10;
}

CFDictionaryRef create_htpc_plane_dict(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  keys[18] = *MEMORY[0x277D85DE8];
  v40 = a2;
  valuePtr = a1;
  v38 = a4;
  v39 = a3;
  v36 = 1;
  v37 = 1;
  v34 = 0;
  v35 = 1;
  if (a4)
  {
    v6 = 8;
  }

  else
  {
    v6 = 16;
  }

  v32 = 8;
  v33 = v6;
  v7 = 3;
  if (!a4)
  {
    v7 = 4;
  }

  v8 = 6;
  if (!a4)
  {
    v8 = 7;
  }

  v9 = v6 - 1;
  v10 = v6 - 1 + a3 * a1;
  v11 = -v6;
  v30 = ((v9 + a1) & v11) >> v7;
  v31 = v10 & v11;
  v28 = 4;
  v29 = (a2 + 7) >> 3;
  v26 = a4;
  v27 = 4 * v30;
  v12 = (4 * v30 * v29 + 127) & 0xFFFFFFFFFFFFFF80;
  v25 = v12 + a4;
  *a5 = (v12 + (a3 << v8) * v29 * v30 + 127) & 0xFFFFFFFFFFFFFF80;
  v13 = *MEMORY[0x277CD2B18];
  keys[0] = *MEMORY[0x277CD2B50];
  keys[1] = v13;
  v14 = *MEMORY[0x277CD2AA0];
  keys[2] = *MEMORY[0x277CD2B38];
  keys[3] = v14;
  v15 = *MEMORY[0x277CD2A98];
  keys[4] = *MEMORY[0x277CD2B40];
  keys[5] = v15;
  v16 = *MEMORY[0x277CD2AE0];
  keys[6] = *MEMORY[0x277CD2940];
  keys[7] = v16;
  v17 = *MEMORY[0x277CD2AC8];
  keys[8] = *MEMORY[0x277CD2AD0];
  keys[9] = v17;
  v18 = *MEMORY[0x277CD2B20];
  keys[10] = *MEMORY[0x277CD2B58];
  keys[11] = v18;
  v19 = *MEMORY[0x277CD2AA8];
  keys[12] = *MEMORY[0x277CD2A90];
  keys[13] = v19;
  v20 = *MEMORY[0x277CD2B10];
  keys[14] = *MEMORY[0x277CD2B08];
  keys[15] = v20;
  v21 = *MEMORY[0x277CD2AB8];
  keys[16] = *MEMORY[0x277CD2AC0];
  keys[17] = v21;
  values[0] = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  values[1] = CFNumberCreate(0, kCFNumberCFIndexType, &v40);
  values[2] = CFNumberCreate(0, kCFNumberCFIndexType, &v38);
  values[3] = CFNumberCreate(0, kCFNumberCFIndexType, &v31);
  values[4] = CFNumberCreate(0, kCFNumberCFIndexType, a5);
  values[5] = CFNumberCreate(0, kCFNumberCFIndexType, &v39);
  values[6] = CFNumberCreate(0, kCFNumberCFIndexType, &v37);
  values[7] = CFNumberCreate(0, kCFNumberCFIndexType, &v36);
  values[8] = CFNumberCreate(0, kCFNumberSInt32Type, &v33);
  values[9] = CFNumberCreate(0, kCFNumberSInt32Type, &v32);
  values[10] = CFNumberCreate(0, kCFNumberCFIndexType, &v30);
  values[11] = CFNumberCreate(0, kCFNumberCFIndexType, &v29);
  values[12] = CFNumberCreate(0, kCFNumberCFIndexType, &v28);
  values[13] = CFNumberCreate(0, kCFNumberCFIndexType, &v27);
  values[14] = CFNumberCreate(0, kCFNumberCFIndexType, &v35);
  values[15] = CFNumberCreate(0, kCFNumberCFIndexType, &v34);
  values[16] = CFNumberCreate(0, kCFNumberCFIndexType, &v26);
  values[17] = CFNumberCreate(0, kCFNumberCFIndexType, &v25);
  v22 = CFDictionaryCreate(0, keys, values, 18, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  for (i = 0; i != 18; ++i)
  {
    CFRelease(values[i]);
  }

  return v22;
}

unint64_t rowbytes_for_packed_format(uint64_t a1, int a2)
{
  v2 = 3;
  v3 = 2;
  if (a2 > 1885746227)
  {
    if ((a2 - 1886676528) <= 4 && ((1 << (a2 - 48)) & 0x15) != 0 || (a2 - 1886680624) <= 4 && ((1 << (a2 - 48)) & 0x15) != 0)
    {
      v6 = 3;
      v2 = 5;
      v3 = 4;
      return ((v3 + a1) / v2) << v6;
    }

    v4 = 13364;
    goto LABEL_10;
  }

  if (a2 > 1882469427)
  {
    if (a2 != 1882469428 && a2 != 1885745712)
    {
      v4 = 12850;
LABEL_10:
      v5 = v4 | 0x70660000;
      goto LABEL_15;
    }

LABEL_17:
    v6 = 2;
    return ((v3 + a1) / v2) << v6;
  }

  if (a2 == 1882468912)
  {
    goto LABEL_17;
  }

  v5 = 1882468914;
LABEL_15:
  v6 = 2;
  if (a2 != v5)
  {
    rowbytes_for_packed_format();
  }

  return ((v3 + a1) / v2) << v6;
}

char *LICreateGhostlyVersionWithDataWrapper(CGImage *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  Width = CGImageGetWidth(a1);
  v5 = CGImageGetHeight(a1);
  ImageProvider = CGImageGetImageProvider();
  DataProvider = CGImageGetDataProvider(a1);
  if (ImageProvider)
  {
    if (LIGetBGRA8888DataForImage___once != -1)
    {
      LICreateGhostlyVersionWithDataWrapper_cold_1();
    }

    v8 = CGImageProviderCopyImageBlockSetWithOptions();
    if (v8)
    {
      v9 = v8;
      if (CGImageBlockSetGetImageBlock())
      {
        Data = CGImageBlockGetData();
        BytesPerRow = CGImageBlockGetBytesPerRow();
        v12 = v38;
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 0x40000000;
        v13 = &__block_descriptor_tmp_1;
        v14 = __LIGetBGRA8888DataForImage_block_invoke_2;
LABEL_12:
        v12[2] = v14;
        v12[3] = v13;
        v12[4] = v9;
        v16 = _Block_copy(v12);
        goto LABEL_17;
      }

      CGImageBlockSetRelease();
    }
  }

  else
  {
    v9 = DataProvider;
    if (DataProvider)
    {
      if (CGImageGetBitmapInfo(a1) == 8194)
      {
        BytePtr = CGDataProviderGetBytePtr();
        if (BytePtr)
        {
          Data = BytePtr;
          BytesPerRow = CGImageGetBytesPerRow(a1);
          v12 = aBlock;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 0x40000000;
          v13 = &__block_descriptor_tmp_2;
          v14 = __LIGetBGRA8888DataForImage_block_invoke_3;
          goto LABEL_12;
        }
      }

      else
      {
        syslog(4, "%s: bitmap data for CGImage %p [%zux%zd] not in BGRA8888 format\n", "LIGetBGRA8888DataForImage", a1, Width, v5);
      }
    }
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  v19 = CGBitmapContextCreate(0, Width, v5, 8uLL, AlignedBytesPerRow, DeviceRGB, 0x2002u);
  if (!v19)
  {
    CGColorSpaceRelease(DeviceRGB);
    return 0;
  }

  v20 = v19;
  v39.size.width = Width;
  v39.size.height = v5;
  v39.origin.x = 0.0;
  v39.origin.y = 0.0;
  CGContextDrawImage(v19, v39, a1);
  Data = CGBitmapContextGetData(v20);
  Width = CGBitmapContextGetWidth(v20);
  v5 = CGBitmapContextGetHeight(v20);
  BytesPerRow = CGBitmapContextGetBytesPerRow(v20);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 0x40000000;
  v36[2] = __LIGetBGRA8888DataForImage_block_invoke_4;
  v36[3] = &__block_descriptor_tmp_4;
  v36[4] = v20;
  v16 = _Block_copy(v36);
  CGColorSpaceRelease(DeviceRGB);
LABEL_17:
  v21 = 4 * Width;
  v22 = CGBitmapGetAlignedBytesPerRow() * v5;
  v23 = CGBitmapAllocateData();
  if (v23)
  {
    height = v5;
    if ((BytesPerRow & 3) != 0 || BytesPerRow > CGBitmapGetAlignedBytesPerRow())
    {
      v34 = a2;
      v24 = CGBitmapGetAlignedBytesPerRow();
      v25 = v24;
      if (v5)
      {
        v26 = v5;
        v27 = Width;
        v28 = v26;
        v29 = v23;
        do
        {
          LIConvertBGRA8888ToBGRA8888Grayscale(Data, v29, v21);
          Data += BytesPerRow;
          v29 += v25;
          --v28;
        }

        while (v28);
        BytesPerRow = v25;
        Width = v27;
      }

      else
      {
        BytesPerRow = v24;
      }

      a2 = v34;
      if (v34)
      {
        goto LABEL_28;
      }
    }

    else
    {
      LIConvertBGRA8888ToBGRA8888Grayscale(Data, v23, v5 * BytesPerRow);
      if (a2)
      {
LABEL_28:
        v30 = (*(a2 + 16))(a2, v23, v22);
        v31 = CGDataProviderCreateWithCFData(v30);
        CFRelease(v30);
LABEL_31:
        CGBitmapFreeData();
        if (!v31)
        {
          v23 = 0;
          if (!v16)
          {
            return v23;
          }

          goto LABEL_34;
        }

        v32 = CGColorSpaceCreateDeviceRGB();
        v23 = CGImageCreate(Width, height, 8uLL, 0x20uLL, BytesPerRow, v32, 0x2002u, v31, 0, 0, kCGRenderingIntentDefault);
        CGColorSpaceRelease(v32);
        CGDataProviderRelease(v31);
        goto LABEL_33;
      }
    }

    v31 = CGDataProviderCreateWithCopyOfData();
    goto LABEL_31;
  }

LABEL_33:
  if (v16)
  {
LABEL_34:
    v16[2](v16);
    _Block_release(v16);
  }

  return v23;
}

const char *LIConvertBGRA8888ToBGRA8888Grayscale(const char *result, char *a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v3 = &result[a3];
    do
    {
      v9 = vld4_s8(result);
      result += 32;
      v9.val[0] = vaddhn_s16(vmlal_u8(vmull_u8(0x9797979797979797, v9.val[1]), 0x1C1C1C1C1C1C1C1CLL, v9.val[0]), vmull_u8(0x4D4D4D4D4D4D4D4DLL, v9.val[2]));
      v9.val[1] = v9.val[0];
      v9.val[2] = v9.val[0];
      vst4_s8(a2, v9);
      a2 += 32;
    }

    while (result < v3);
  }

  if ((a3 & 0x1F) != 0)
  {
    v4 = &result[a3 & 0x1F];
    do
    {
      v5 = *(result + 1);
      v6 = *(result + 2);
      v7 = result[3];
      v8 = (28 * *result + 151 * v5 + 77 * v6) >> 8;
      *a2 = (28 * *result + 151 * v5 + 77 * v6) >> 8;
      a2[1] = v8;
      a2[2] = v8;
      a2[3] = v7;
      a2 += 4;
      result += 4;
    }

    while (result < v4);
  }

  return result;
}

CFDictionaryRef __LIGetBGRA8888DataForImage_block_invoke()
{
  keys[5] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CBECE8];
  valuePtr = 4;
  v1 = CFNumberCreate(v0, kCFNumberIntType, &valuePtr);
  v7 = 8;
  v2 = CFNumberCreate(v0, kCFNumberIntType, &v7);
  v3 = *MEMORY[0x277CBF530];
  keys[0] = *MEMORY[0x277CBF538];
  keys[1] = v3;
  v4 = *MEMORY[0x277CBF510];
  keys[2] = *MEMORY[0x277CBF540];
  keys[3] = v4;
  keys[4] = *MEMORY[0x277CBF518];
  v5 = *MEMORY[0x277CBF528];
  values[0] = *MEMORY[0x277CBED28];
  values[1] = v5;
  values[2] = values[0];
  values[3] = v1;
  values[4] = v2;
  result = CFDictionaryCreate(v0, keys, values, 5, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  LIGetBGRA8888DataForImage___options = result;
  return result;
}

void LIIconContinuousCornerRadiusForVariant_cold_2(int a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "CGFloat LIIconContinuousCornerRadiusForVariant(LIIconVariant)";
  v4 = 1024;
  v5 = a1;
  _os_log_fault_impl(&dword_259AA3000, a2, OS_LOG_TYPE_FAULT, "%s called with unsupported icon variant %d.", &v2, 0x12u);
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}
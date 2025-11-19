uint64_t sub_100000C8C(uint64_t a1, CGContextRef context)
{
  Width = CGBitmapContextGetWidth(context);
  Height = CGBitmapContextGetHeight(context);
  v6 = *(a1 + 40);
  v7 = Width / *(a1 + 32);
  if (v7 >= Height / v6)
  {
    v7 = Height / v6;
  }

  CGContextScaleCTM(context, v7, v7);
  v8 = *(a1 + 48);
  CGContextDrawSVGDocument();
  CFRelease(*(a1 + 48));
  return 1;
}